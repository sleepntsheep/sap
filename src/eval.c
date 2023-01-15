#include "eval.h"
#include "error.h"
#include "sobject.h"
#include <math.h>

SObject *ast_or_eval(AST *ast, Env *env) {
    SObject *left = ast_eval(ast->logic_or.left, env);
    if (sobject_istrue(left))
        return left;
    return ast_eval(ast->logic_or.right, env);
}

SObject *ast_and_eval(AST *ast, Env *env) {
    SObject *left = ast_eval(ast->logic_and.left, env);
    if (!sobject_istrue(left))
        return left;
    return ast_eval(ast->logic_and.right, env);
}

SObject *ast_unary_eval(AST *ast, Env *env) {
    SObject *right = ast_eval(ast->unary.right, env);
    switch (ast->unary.op.type) {
        case T_MINUS:
            if (right->type == SObjNumber)
                return sobject_new_number(-right->number);
            break;
        case T_PLUS:
            if (right->type == SObjNumber)
                return sobject_new_number(right->number);
            break;
        default:
            runtime_error(ast->unary.op, "Wrong operator for unary: %s",
                    tokentype_str(ast->binary.op.type));
    }
    return sobject_new_nil();
}

SObject *ast_binary_eval(AST *ast, Env *env) {
    SObject *left = ast_eval(ast->binary.left, env);
    SObject *right = ast_eval(ast->binary.right, env);
    SObject *result = NULL;
    switch (ast->binary.op.type) {
        case T_EQUAL:
            return sobject_new_bool(sobject_isequal(left, right));
        case T_NOTEQUAL:
            return sobject_new_bool(!sobject_isequal(left, right));
        case T_LESSEQUAL:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_bool(left->number <= right->number);
            break;
        case T_GREATEREQUAL:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_bool(left->number >= right->number);
            break;
        case T_PLUS:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_number(left->number + right->number);
            runtime_error(ast->binary.op, "invalid operand type for binary operator + ");
            break;
        case T_CONCAT:
            result = sobject_new_string(sobject_to_string(left));
            result->string = sstring_cat(result->string, sobject_to_string(right));
            return result;
            break;
        case T_MINUS:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_number(left->number - right->number);
            break;
        case T_MULTIPLY:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_number(left->number * right->number);
            break;
        case T_DIVIDE:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_number(left->number / right->number);
            break;
        case T_MODULO:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_number(fmod(left->number, right->number));
            break;
        case T_POWER:
            if (left->type == SObjNumber && right->type == SObjNumber)
                return sobject_new_number(pow(left->number, right->number));
            break;
        default:
            runtime_error(ast->binary.op, "Wrong operator for binary: %s",
                    tokentype_str(ast->binary.op.type));
    }
    return sobject_new_nil();
}

SObject *ast_variable_eval(AST *ast, Env *env) {
    return env_lookup(env, ast->variable.token);
}

SObject *ast_literal_eval(AST *ast, Env *env) {
    (void)env;
    switch (ast->literal.token.type) {
        case T_STRING:
            return sobject_new_string(ast->literal.token.lexeme);
            break;
        case T_NUMBER:
            return sobject_new_number(strtod(ast->literal.token.lexeme, NULL));
            break;
        case T_FALSE:
            return sobject_new_false();
        case T_TRUE:
            return sobject_new_true();
        case T_NIL:
            return sobject_new_nil();
        default:
            runtime_error(ast->literal.token, "Not a literal");
    }
}

SObject *ast_declaration_eval(AST *ast, Env *env) {
    SObject *value;
    if (ast->declaration.initializer)
        value = ast_eval(ast->declaration.initializer, env);
    else
        value = sobject_new_nil();
    env_define(env, ast->declaration.token, value);
    return value;
}

SObject *ast_assignment_eval(AST *ast, Env *env) {
    SObject *value = ast_eval(ast->declaration.initializer, env);
    env_assign(env, ast->declaration.token, value);
    return value;
}

SObject *ast_if_eval(AST *ast, Env *env) {
    SObject *condition = ast_eval(ast->ifelse.condition, env);
    if (sobject_istrue(condition)) {
        return ast_eval(ast->ifelse.if_true, env);
    } else if (ast->ifelse.if_false != NULL) {
        return ast_eval(ast->ifelse.if_false, env);
    } else {
        return sobject_new_nil();
    }
}

SObject *ast_while_eval(AST *ast, Env *env) {
    SObject *result = NULL;
    while (sobject_istrue(ast_eval(ast->whileloop.condition, env))) {
        result = ast_eval(ast->whileloop.while_true, env);
    }
    if (result == NULL) result = sobject_new_nil();
    return result;
}

SObject *ast_block_eval(AST *ast, Env *env) {
    Env *child_env = env_new(env);
    SObject *result = NULL;
    for (size_t i = 0; i < ast->block.exprlist->length; i++) {
        result = ast_eval(ast->block.exprlist->data[i], child_env);
    }
    env_free(child_env);
    return result;
}

SObject *ast_function_eval(AST *ast, Env *env) {
    (void)env;
    return sobject_new_function(ast->function.params, ast->function.body);
}

SObject *ast_call_eval(AST *ast, Env *env) {
    Env *child_env = env_new(env);
    SObject *f = ast_eval(ast->call.callable, env);

    if (f->type != SObjFunction)
        runtime_error(ast->call.paren, "Object not callable");

    if (f->function.params->length != ast->call.args->length) {
        runtime_error(ast->call.paren, "Function take %d parameters but only"
                " %d arguments given", f->function.params->length,
                ast->call.args->length);
    }

    for (size_t i = 0; i < ast->call.args->length; i++) {
        env_define(child_env, f->function.params->tokens[i],
                ast_eval(ast->call.args->data[i], env));
    }

    SObject *result = ast_eval(f->function.body, child_env);
    env_free(child_env);

    return result;
}

SObject *ast_print_eval(AST *ast, Env *env) {
    SObject *o = ast_eval(ast->print.expr, env);
    printf("%s\n", sobject_to_string(o));
    return o;
}

SObject *ast_eval(AST *ast, Env *env) {
    switch (ast->type) {
        case A_BINARY: return ast_binary_eval(ast, env);
        case A_UNARY: return ast_unary_eval(ast, env);
        case A_OR: return ast_or_eval(ast, env);
        case A_AND: return ast_and_eval(ast, env);
        case A_LITERAL: return ast_literal_eval(ast, env);
        case A_ASSIGNMENT: return ast_assignment_eval(ast, env);
        case A_DECLARATION: return ast_declaration_eval(ast, env);
        case A_VARIABLE: return ast_variable_eval(ast, env);
        case A_IF: return ast_if_eval(ast, env);
        case A_WHILE: return ast_while_eval(ast, env);
        case A_BLOCK: return ast_block_eval(ast, env);
        case A_FUNCTION: return ast_function_eval(ast, env);
        case A_PRINT: return ast_print_eval(ast, env);
        case A_CALL: return ast_call_eval(ast, env);
    }
}


