#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "token.h"
#include "sobject.h"
#include "lexer.h"
#include "parser.h"
#include "env.h"
#include "eval.h"

void interpret(const char *code) {
    Env env;
    env_init(&env, NULL);
    env_define_native(&env);
    TokenList *tokens = lex(code, -1);
    ASTList *expr = parse(tokens);
    for (size_t i = 0; i < expr->length; i++)
        ast_eval(expr->data[i], &env);
    astlist_free(expr);
    tokenlist_free(tokens);
    env_cleanup(&env);
}

int main(int argc, char **argv) {
    srand(time(0));

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
        Env env;
        env_init(&env, NULL);
        env_define_native(&env);

        while (fgets(line, sizeof line, stdin)) {
            TokenList *tokens = lex(line, -1);
            ASTList *expr = parse(tokens);
            for (size_t i = 0; i < expr->length; i++)
                ast_eval(expr->data[i], &env);
            astlist_free(expr);
            tokenlist_free(tokens);
        }
    }

    return 0;
}

