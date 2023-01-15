#include "token.h"
#include <stdlib.h>
#define TOKENLIST_INIT_CAP 4

const char *tokentype_str(TokenType type) {
    return __TokenName[type];
}

TokenList *tokenlist_new(void) {
    TokenList *tl = calloc(1, sizeof(TokenList));
    tl->length = 0;
    tl->alloc = TOKENLIST_INIT_CAP;
    tl->tokens = calloc(sizeof(Token), tl->alloc);
    return tl;
}

Token *tokenlist_at(TokenList *tl, size_t idx) {
    return tl->tokens + idx;
}

void tokenlist_push(TokenList *tl, Token token) {
    if (tl->length == tl->alloc) {
        tl->alloc *= 2;
        tl->tokens = realloc(tl->tokens, tl->alloc * sizeof(Token));
    }
    tl->tokens[tl->length++] = token;
}

void tokenlist_free(TokenList *tl) {
    free(tl->tokens);
    free(tl);
}

