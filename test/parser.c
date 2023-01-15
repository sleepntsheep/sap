#include "../src/token.h"
#include "../src/lexer.h"
#include "../src/parser.h"
#include "../src/ast.h"
#include "readfile.c"

void print_token(Token token, int indent) {
    for (int i = 0; i < indent; i++) printf(" ");
    printf("%s %s (%d %d %d %d)\n", tokentype_str(token.type), token.lexeme,
            token.span.row_start, token.span.col_start, token.span.row_end, token.span.col_end);
}

void print_ast(AST *ast, int indent) {
    for (int i = 0; i < indent; i++) printf(" ");
    if (!ast)  {
        printf("null ast\n");
        return;
    }
    printf("%s\n", asttype_str(ast->type));
    switch (ast->type) {
        case A_OR:
            print_ast(ast->logic_or.left, indent+1);
            print_ast(ast->logic_and.right, indent+1);
            break;
        case A_AND:
            print_ast(ast->logic_or.left, indent+1);
            print_ast(ast->logic_and.right, indent+1);
            break;
        case A_UNARY:
            print_ast(ast->unary.right, indent+1);
            break;
        case A_BINARY:
            print_ast(ast->binary.left, indent+1);
            print_ast(ast->binary.right, indent+1);
            break;
        case A_DECLARATION:
            print_token(ast->declaration.token, indent+1);
            print_ast(ast->declaration.initializer, indent+1);
            break;
        case A_ASSIGNMENT:
            print_token(ast->assignment.token, indent+1);
            print_ast(ast->assignment.initializer, indent+1);
            break;
        case A_LITERAL:
            print_token(ast->literal.token, indent+1);
            break;
        case A_VARIABLE:
            print_token(ast->variable.token, indent+1);
            break;
        case A_IF:
            print_ast(ast->ifelse.condition, indent+1);
            print_ast(ast->ifelse.if_true, indent+1);
            print_ast(ast->ifelse.if_false, indent+1);
            break;
        case A_WHILE:
            print_ast(ast->whileloop.condition, indent+1);
            print_ast(ast->whileloop.while_true, indent+1);
            break;
        case A_BLOCK:
            for (int i = 0; i < ast->block.exprlist->length; i++)
                print_ast(ast->block.exprlist->data[i], indent+1);
            break;
        case A_PRINT:
            print_ast(ast->print.expr, indent+1);
            break;
        case A_FUNCTION:
            for (int i = 0; i < ast->function.params->length; i++)
                print_token(ast->function.params->tokens[i], indent+1);
            print_ast(ast->function.body, indent+1);
            break;
        case A_CALL:
            print_ast(ast->call.callable, indent+1);
            for (int i = 0; i < ast->call.args->length; i++)
                print_ast(ast->call.args->data[i], indent+1);
            print_token(ast->call.paren, indent+1);
            break;
    }
}

int main(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        TokenList *tokens = lex(read_file(argv[i]), -1);
        ASTList *ast = parse(tokens);
        for (int i = 0; i < ast->length; i++) 
            print_ast(ast->data[i], 0);
        tokenlist_free(tokens);
    }

    return 0;
}

