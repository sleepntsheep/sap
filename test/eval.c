#include "../src/token.h"
#include "../src/lexer.h"
#include "../src/ast.h"
#include <assert.h>

int main() {
    AST*root = ast_new((AST){.type = A_BINARY, .binary = {
            .left = ast_new((AST){.type = A_LITERAL, .literal = {
                    .token = (Token){.type = T_NUMBER, .lexeme = "1", .lexeme_length = 1}},
                    }),
            .op = (Token) {.type = T_PLUS, .lexeme = "+", .lexeme_length = 1},
            .right = ast_new((AST){.type = A_LITERAL, .literal = {
                    .token = (Token){.type = T_NUMBER, .lexeme = "2", .lexeme_length = 1}},
                    })
            }});
    SObject *v = ast_eval(root);
    assert(v->type == SObjNumber);
    assert(v->number == 3.0L);
    return 0;
}

