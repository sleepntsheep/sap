#include "lexer.h"
#include "error.h"
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

struct Lexer {
    const char *code;
    size_t length;
    size_t pos;
    size_t start;
    TokenList *tokens;
    int line;
    int col;
    Span span;
};

static Lexer *lexer_new(const char *code) {
    Lexer *l = calloc(1, sizeof(Lexer));
    l->pos = 0;
    l->length = strlen(code);
    l->tokens = tokenlist_new();
    l->line = l->col = 0;
    l->span = (Span){ 0, 0, 0, 0 };
    l->code = code;
    return l;
}

static void set_start(Lexer *l) {
    l->start = l->pos;
    l->span = (Span){
        .row_start = l->line,
        .col_start = l->col,
    };
}

static int end(Lexer *l) {
    return l->pos >= l->length;
}

static char peekn(Lexer *l, size_t n) {
    return l->code[l->pos + n];
}

#define peek(l) peekn(l, 0)
#define peek2(l) peekn(l, 1)
#define peek3(l) peekn(l, 2)

static char advance(Lexer *l) {
    l->col++;
    return l->code[l->pos++];
}

static void push(Lexer *l, int type) {
    SString s = sstring_new();
    s = sstring_catlen(s, l->code + l->start, l->pos - l->start);
    l->span.row_end = l->line;
    l->span.col_end = l->col;
    tokenlist_push(l->tokens, (Token){.type = type, .lexeme = s, .span = l->span});
}

static void consume(Lexer *l, int ch) {
    expect(peek(l) == ch);
    advance(l);
}

static void handle_bang(Lexer *l) {
    consume(l, '!');
    if (peek(l) == '=') {
        consume(l, '=');
        push(l, T_NOTEQUAL);
    } else {
    }
}

static void handle_left_angle(Lexer *l) {
    consume(l, '<');
    if (peek(l) == '=') {
        advance(l);
        push(l, T_LESSEQUAL);
    } else {
        push(l, T_LESS);
    }
}

static void handle_right_angle(Lexer *l) {
    consume(l, '>');
    if (peek(l) == '=') {
        advance(l);
        push(l, T_GREATEREQUAL);
    } else {
        push(l, T_GREATER);
    }
}

static void handle_colon(Lexer *l) {
    consume(l, ':');
    consume(l, '=');
    push(l, T_ASSIGN);
}

static void handle_dot(Lexer *l) {
    consume(l, '.');
    consume(l, '.');
    push(l, T_CONCAT);
}

static void handle_number(Lexer *l) {
    set_start(l);
    while (isdigit(peek(l))) advance(l);
    push(l, T_NUMBER);
}

static void handle_double_quote(Lexer *l) {
    consume(l, '"');
    set_start(l);
    while (peek(l) != '"') advance(l);
    push(l, T_STRING);
    consume(l, '"');
}

static void handle_identifier(Lexer *l) {
    static struct {
        const char *s;
        TokenType t;
    } const keywords[] = {
        {"while", T_WHILE},
        {"print", T_PRINT},
        {"let", T_LET},
        {"false", T_FALSE},
        {"true", T_TRUE},
        {"nil", T_NIL},
        {"if", T_IF},
        {"else", T_ELSE},
        {"and", T_AND},
        {"or", T_OR},
        {"not", T_NOT},
        {"subroutine", T_SUBROUTINE},
    };

    for (size_t i = 0; i < sizeof keywords / sizeof *keywords; i++) {
        if (!strncmp(l->code + l->pos, keywords[i].s, strlen(keywords[i].s))) {
            size_t wl = strlen(keywords[i].s);
            if (isalnum(l->code[l->pos + wl]) || l->code[l->pos + wl] == '_')
                continue;
            push(l, keywords[i].t);
            l->pos += strlen(keywords[i].s);
            return;
        }
    }

    while (peek(l) == '_' || isalpha(peek(l)))
        advance(l);
    push(l, T_IDENTIFIER);
}

static void lexer_lex(Lexer *l) {
#define C1(c, t) case c: push(l, t); advance(l); break;
    for (; !end(l); ) {
        set_start(l);
        switch (peek(l)) {
            case ' ': case '\t':
                advance(l);
                break;
            case '\n':
            case '\r':
                l->line++;
                l->col = 0;
                advance(l);
                break;
            C1('(', T_LPAREN)
            C1(')', T_RPAREN)
            C1('{', T_LBRACE)
            C1('}', T_RBRACE)
            C1('&', T_AND)
            C1('|', T_OR)
            C1('+', T_PLUS)
            C1('-', T_MINUS)
            C1('*', T_MULTIPLY)
            C1('/', T_DIVIDE)
            C1('%', T_MODULO)
            C1('=', T_EQUAL)
            C1('@', T_AT)
            case '!':
                handle_bang(l);
                break;
            case '<':
                handle_left_angle(l);
                break;
            case '>':
                handle_right_angle(l);
                break;
            case ':':
                handle_colon(l);
                break;
            case '0': case '1': case '2': case '3': case '4': case '5':
            case '6': case '7': case '8': case '9':
                handle_number(l);
                break;
            case '"':
                handle_double_quote(l);
                break;
            case '.':
                handle_dot(l);
                break;
            default:
                if (isalpha(peek(l)) || peek(l) == '_') {
                    handle_identifier(l);
                } else {
                    die("Unexpected character near %4s\n", l->code + l->pos);
                }
                break;
        }
    }
    push(l, T_EOF);
#undef C1
}

TokenList *lex(const char *code, size_t len) {
    (void)len;
    Lexer *l = lexer_new(code);
    lexer_lex(l);
    TokenList *r = l->tokens;
    free(l);
    return r;
}

