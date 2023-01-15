#include "parser.h"
#include "error.h"
#include <stdarg.h>

typedef struct {
    size_t pos;
    TokenList *tokens;
} Parser;

static Token peekn(Parser *p, size_t n) {
    return *tokenlist_at(p->tokens, p->pos + n);
}
#define peek(p) peekn(p, 0)
#define peek2(p) peekn(p, 1)

static int end(Parser *p) {
    return peek(p).type == T_EOF || 
        p->pos >= p->tokens->length;
}

static Token consume(Parser *p, TokenType type) {
    if (peek(p).type != type)
        parse_error(peek(p), "expected token type %s but got %s",
                tokentype_str(type), tokentype_str(peek(p).type));
    return *tokenlist_at(p->tokens, p->pos++);
}

static Token advance(Parser *p) {
    return *tokenlist_at(p->tokens, p->pos++);
}

static int check(Parser *p, int n, ...) {
    va_list ap;
    va_start(ap, n);
    for (int i = 0; i < n; i++)
        if (peek(p).type == va_arg(ap, TokenType))
            return 1;
    va_end(ap);
    return 0;
}
#define check1(p, t) check(p, 1, t)

static int match(Parser *p, int n, ...) {
    va_list ap;
    va_start(ap, n);
    for (int i = 0; i < n; i++)
        if (peek(p).type == va_arg(ap, TokenType)) {
            advance(p);
            return 1;
        }
    va_end(ap);
    return 0;
}
#define match1(p, t) match(p, 1, t)

static AST *if_else(Parser *p);
static AST *while_loop(Parser *p);
static AST *declaration(Parser *p);
static AST *expression(Parser *p);
static AST *function(Parser *p);
static AST *assignment(Parser *p);
static AST *logic_or(Parser *p);
static AST *logic_and(Parser *p);
static AST *equality(Parser *p);
static AST *comparsion(Parser *p);
static AST *term(Parser *p);
static AST *factor(Parser *p);
static AST *exponent(Parser *p);
static AST *unary(Parser *p);
static AST *call(Parser *p);
static AST *primary(Parser *p);
static AST *block(Parser *p);

static AST *expression(Parser *p) {
    if (check(p, 1, T_IF)) {
        return if_else(p);
    }
    if (match(p, 1, T_PRINT)) {
        return ast_print(expression(p));
    }
    if (check(p, 1, T_WHILE)) {
        return while_loop(p);
    }
    if (check(p, 1, T_SUBROUTINE)) {
        return function(p);
    }
    if (check(p, 1, T_LBRACE)) {
        return block(p);
    }
    return declaration(p);
}

static AST *if_else(Parser *p) {
    consume(p, T_IF);
    AST *cond = expression(p);
    AST *if_true = expression(p);
    AST *if_false = NULL;
    if (match(p, 1, T_ELSE)) {
        if_false = expression(p);
    }
    return ast_if(cond, if_true, if_false);
}

static AST *while_loop(Parser *p) {
    consume(p, T_WHILE);
    AST *cond = expression(p);
    AST *then = expression(p);
    return ast_while(cond, then);
}

static AST *block(Parser *p) {
    consume(p, T_LBRACE);
    ASTList *exprs = astlist_new();
    while (!end(p) && !check(p, 1, T_RBRACE)) {
        astlist_push(exprs, expression(p));
    }
    consume(p, T_RBRACE);
    return ast_block(exprs);
}

static AST *function(Parser *p) {
    consume(p, T_SUBROUTINE);
    TokenList *params = tokenlist_new();
    consume(p, T_LPAREN);
    while (!check(p, 1, T_RPAREN)) {
        tokenlist_push(params, consume(p, T_IDENTIFIER));
    }
    consume(p, T_RPAREN);
    AST *body = expression(p);
    return ast_function(params, body);
}

static AST *declaration(Parser *p) {
    if (check(p, 1, T_LET)) {
        AST *initializer = NULL;
        advance(p);
        Token id = advance(p);
        if (match(p, 1, T_ASSIGN)) {
            initializer = expression(p);
        }
        return ast_declaration(id, initializer);
    } else {
        return assignment(p);
    }
}

static AST *assignment(Parser *p) {
    if (peek(p).type == T_IDENTIFIER && peek2(p).type == T_ASSIGN) {
        Token name = advance(p);
        advance(p);
        return ast_assignment(name, expression(p));
    } else {
        return logic_or(p);
    }
}

static AST *logic_or(Parser *p) {
    AST *expr = logic_and(p);
    while (peek(p).type == T_OR) {
        advance(p);
        expr = ast_or(expr, logic_and(p));
    }
    return expr;
}

static AST *logic_and(Parser *p) {
    AST *expr = equality(p);
    while (peek(p).type == T_AND) {
        advance(p);
        expr = ast_and(expr, equality(p));
    }
    return expr;
}

static AST *equality(Parser *p) {
    AST *expr = comparsion(p);
    if (check(p, 2, T_NOTEQUAL, T_EQUAL)) {
        Token op = advance(p);
        AST *right = comparsion(p);
        expr = ast_binary(expr, op, right);
    }
    return expr;
}

static AST *comparsion(Parser *p) {
    AST *expr = term(p);
    if (check(p, 4, T_LESS, T_LESSEQUAL, T_GREATER, T_GREATEREQUAL)) {
        Token op = advance(p);
        AST *right = term(p);
        expr = ast_binary(expr, op, right);
    }
    return expr;
}

static AST *term(Parser *p) {
    AST *expr = factor(p);
    while (check(p, 3, T_PLUS, T_MINUS, T_CONCAT)) {
        Token op = advance(p);
        AST *right = factor(p);
        expr = ast_binary(expr, op, right);
    }
    return expr;
}

static AST *factor(Parser *p) {
    AST *expr = exponent(p);
    while (check(p, 3, T_MULTIPLY, T_DIVIDE, T_MODULO)) {
        Token op = advance(p);
        AST *right = exponent(p);
        expr = ast_binary(expr, op, right);
    }
    return expr;
}

static AST *exponent(Parser *p) {
    AST *expr = unary(p);
    if (check(p, 1, T_POWER)) {
        Token op = advance(p);
        AST *right = exponent(p);
        expr = ast_binary(expr, op, right);
    }
    return expr;
}

static AST *unary(Parser *p) {
    AST *expr = NULL;
    if (check(p, 3, T_NOT, T_MINUS, T_PLUS)) {
        Token op = advance(p);
        expr = ast_unary(op, unary(p));
    } else {
        expr = call(p);
    }
    return expr;
}

static AST *call(Parser *p) {
    AST *expr = primary(p);
    if (match(p, 1, T_LPAREN)) {
        ASTList *args = astlist_new();
        while (!end(p) && !check(p, 1, T_RPAREN)) {
            astlist_push(args, expression(p));
        }
        Token rparen = advance(p);
        expr = ast_call(expr, args, rparen);
    }
    return expr;
}

static AST *primary(Parser *p) {
    if (end(p)) return NULL;
    if (check(p, 5, T_NUMBER, T_STRING, T_FALSE, T_TRUE, T_NIL)) {
        return ast_literal(advance(p));
    }
    if (check(p, 1, T_IDENTIFIER)) {
        return ast_variable(advance(p));
    }
    if (match(p, 1, T_LPAREN)) {
        AST *expr = expression(p);
        consume(p, T_RPAREN);
        return expr;
    }
    parse_error(peek(p), "unknown primary token: %s", tokentype_str(peek(p).type));
}

ASTList *parse(TokenList *tokens) {
    Parser p = {.pos = 0, .tokens = tokens};
    ASTList *asts = astlist_new();
    while (!end(&p))
        astlist_push(asts, expression(&p));
    return asts;
}

