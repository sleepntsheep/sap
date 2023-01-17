#include "ast.h"
#include "sobject.h"
#include "error.h"
#include "env.h"
#include <stdlib.h>

AST *ast_new(AST ast) {
    AST *p = malloc(sizeof *p);
    *p = ast;
    return p;
}

void ast_free(AST *ast) {
    switch (ast->type) {
        case A_OR:
        case A_AND:
        case A_BINARY:
            ast_free(ast->logic_or.left);
            ast_free(ast->logic_or.right);
            break;
        case A_UNARY:
            ast_free(ast->unary.right);
            break;
        case A_DECLARATION:
            ast_free(ast->declaration.initializer);
            break;
        case A_ASSIGNMENT:
            ast_free(ast->assignment.initializer);
            break;
        case A_IF:
            ast_free(ast->ifelse.condition);
            ast_free(ast->ifelse.if_true);
            ast_free(ast->ifelse.if_false);
            break;
        case A_WHILE:
            ast_free(ast->whileloop.condition);
            ast_free(ast->whileloop.while_true);
            break;
        case A_BLOCK:
            for (size_t i = 0; i < ast->block.exprlist->length; i++)
                ast_free(ast->block.exprlist->data[i]);
            break;
        case A_FUNCTION:
            ast_free(ast->function.body);
            break;
        case A_CALL:
            ast_free(ast->call.callable);
            for (size_t i = 0; i < ast->call.args->length; i++)
                ast_free(ast->call.args->data[i]);
            break;
        default:
            break;
    }
}

ASTList *astlist_new() {
    ASTList *l = malloc(sizeof *l);
    l->length = 0;
    l->alloc = 4;
    l->data = malloc(sizeof(AST*) * l->alloc);
    return l;
}

void astlist_push(ASTList *a, AST *x) {
    if (a->length == a->alloc) {
        a->alloc *= 2;
        a->data = realloc(a->data, a->alloc * sizeof(AST*));
    }
    a->data[a->length++] = x;
}

const char *asttype_str(ASTType type) {
    return __ast_type_str[type];
}

void astlist_free(ASTList *a) {
    free(a->data);
    free(a);
}


