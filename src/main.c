#include "token.h"
#include "sobject.h"
#include "lexer.h"
#include "parser.h"
#include <stdio.h>
#include "env.h"
#include "eval.h"

void interpret(const char *code) {
    Env *env = env_new(NULL);
    TokenList *tokens = lex(code, -1);
    ASTList *expr = parse(tokens);
    for (size_t i = 0; i < expr->length; i++)
        ast_eval(expr->data[i], env);
    astlist_free(expr);
    tokenlist_free(tokens);
}

int main(int argc, char **argv) {
    if (argc > 1) {
        for (int i = 1; i < argc; i++) {
            FILE *f = fopen(argv[i], "r");
            fseek(f, 0, SEEK_END);
            long fsize = ftell(f);
            fseek(f, 0, SEEK_SET);
            char *s = malloc(fsize + 1);
            fread(s, fsize, 1, f);
            fclose(f);
            s[fsize] = 0;
            interpret(s);
            free(s);
        }
    } else {
        char line[1 << 12];
        Env *env = env_new(NULL);

        while (fgets(line, sizeof line, stdin)) {
            TokenList *tokens = lex(line, -1);
            //for (size_t i = 0; i < tokens->length; i++)
                //printf("%s %s\n", tokentype_str(tokens->tokens[i].type), tokens->tokens[i].lexeme);
            ASTList *expr = parse(tokens);
            for (size_t i = 0; i < expr->length; i++)
                ast_eval(expr->data[i], env);
            astlist_free(expr);
            tokenlist_free(tokens);
        }
    }

    return 0;
}

