#include "../src/token.h"
#include "../src/lexer.h"
#include <stdio.h>
#include "readfile.c"

void print_token(Token token) {
    printf("%s %s (%d %d %d %d)\n", tokentype_str(token.type), token.lexeme,
            token.span.row_start, token.span.col_start, token.span.row_end, token.span.col_end);
}

int main(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        TokenList *tokens = lex(read_file(argv[i]), -1);
        for (int i = 0; i < tokens->length; i++)
            print_token(tokens->tokens[i]);
        tokenlist_free(tokens);
    }

    return 0;
}

