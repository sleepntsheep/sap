
#include "../src/token.h"
#include "../src/parser.h"
#include <stdarg.h>
#include <assert.h>

TokenList *tokenlist_va(int ntoken, ...) {
    TokenList *t = tokenlist_new();
    va_list ap;
    va_start(ap, ntoken);
    for (int i = 0; i < ntoken; i++)
        tokenlist_push(t, va_arg(ap, Token));
    va_end(ap);
    return t;
}

int main() {
    TokenList *t;
    t = tokenlist_va(3, (Token){T_NUMBER, "1", 1},
            (Token){T_PLUS}, (Token){T_NUMBER, "2", 1});

    AST *ast = parse(t);
    assert(ast->type == A_BINARY);
    assert(ast->binary.left->type == A_LITERAL);
    assert(ast->binary.right->type == A_LITERAL);
    return 0;
}

