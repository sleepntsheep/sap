#pragma once
#ifndef TOKEN_H
#define TOKEN_H
#include <stddef.h>
#include "sstring.h"

#define TOKEN_NAMES \
    X(T_LET) \
    X(T_LPAREN) \
    X(T_RPAREN) \
    X(T_LBRACE) \
    X(T_RBRACE) \
    X(T_IDENTIFIER) \
    X(T_NUMBER) \
    X(T_STRING) \
    X(T_PLUS) \
    X(T_MINUS) \
    X(T_MULTIPLY) \
    X(T_DIVIDE) \
    X(T_MODULO) \
    X(T_EQUAL) \
    X(T_NOTEQUAL) \
    X(T_GREATER) \
    X(T_LESS) \
    X(T_GREATEREQUAL) \
    X(T_LESSEQUAL) \
    X(T_ASSIGN) \
    X(T_AT) \
    X(T_NOT) \
    X(T_POWER) \
    X(T_TRUE) \
    X(T_FALSE) \
    X(T_NIL) \
    X(T_OR) \
    X(T_AND) \
    X(T_IF) \
    X(T_ELSE) \
    X(T_WHILE) \
    X(T_SUBROUTINE) \
    X(T_PRINT) \
    X(T_CONCAT) \
    X(T_EOF) \

#define X(a) a,
typedef enum { TOKEN_NAMES } TokenType;
#undef X
#define X(a) #a,
static const char *__TokenName[] = { TOKEN_NAMES };
#undef X

typedef struct {
    int row_start, row_end;
    int col_start, col_end;
} Span;

typedef struct {
    TokenType type;
    SString lexeme;
    Span span;
} Token;

typedef struct TokenList TokenList;

struct TokenList {
    size_t length;
    size_t alloc;
    Token *tokens;
};

const char *tokentype_str(TokenType type);

TokenList *tokenlist_new(void);
Token *tokenlist_at(TokenList *tl, size_t idx);
void tokenlist_push(TokenList *tl, Token token);
void tokenlist_free(TokenList *tl);

#endif /* TOKEN_H */

