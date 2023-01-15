#pragma once
#ifndef AST_H
#define AST_H
#include "token.h"

#define AST_TYPE_LIST \
    X(A_OR) \
    X(A_AND) \
    X(A_UNARY) \
    X(A_BINARY) \
    X(A_DECLARATION) \
    X(A_ASSIGNMENT) \
    X(A_LITERAL) \
    X(A_VARIABLE) \
    X(A_IF) \
    X(A_WHILE) \
    X(A_BLOCK) \
    X(A_FUNCTION) \
    X(A_CALL) \
    X(A_PRINT) \

#define X(a) a,
typedef enum { AST_TYPE_LIST } ASTType;
#undef X
#define X(a) #a,
static const char *__ast_type_str[] = { AST_TYPE_LIST };

typedef struct AST AST;

typedef struct {
    size_t length;
    size_t alloc;
    AST **data;
} ASTList;

ASTList *astlist_new();
void astlist_push(ASTList *a, AST *x);
void astlist_free(ASTList *a);

struct AST {
    ASTType type;
    union {
        struct {
            AST *left;
            AST *right;
        } logic_or;
        struct {
            AST *left;
            AST *right;
        } logic_and;
        struct {
            Token token;
            double num;
        } literal;
        struct {
            AST *left;
            Token op;
            AST *right;
        } binary;
        struct {
            Token op;
            AST *right;
        } unary;
        struct {
            Token token;
            AST *initializer;
        } assignment;
        struct {
            Token token;
            AST *initializer;
        } declaration;
        struct {
            Token token;
        } variable;
        struct {
            AST *condition;
            AST *if_true;
            AST *if_false;
        } ifelse;
        struct {
            AST *condition;
            AST *while_true;
        } whileloop;
        struct {
            ASTList *exprlist;
        } block;
        struct {
            TokenList *params;
            AST *body;
        } function;
        struct {
            AST *callable;
            ASTList *args;
            Token paren;
        } call;
        struct {
            AST *expr;
        } print;
    };
};

AST *ast_new(AST ast);
const char *asttype_str(ASTType type);

#define ast_if(cond,ift,iff) ast_new((AST){ A_IF, .ifelse = {cond,ift,iff}})
#define ast_block(exprlist) ast_new((AST){ A_BLOCK, .block = {exprlist}} )
#define ast_while(cond,then) ast_new((AST){ A_WHILE, .whileloop = {cond,then}})
#define ast_binary(l,op,r) ast_new((AST){ A_BINARY, .binary = {l,op,r}})
#define ast_unary(op,r) ast_new((AST){ A_BINARY, .unary = {op,r}})
#define ast_literal(t) ast_new((AST){ A_LITERAL, .literal = { .token = t }})
#define ast_variable(t) ast_new((AST){ A_VARIABLE, .variable = { .token = t }})
#define ast_assignment(name,init) ast_new((AST){ A_ASSIGNMENT, .assignment = {name,init}})
#define ast_declaration(name,init) ast_new((AST){ A_DECLARATION, .assignment = {name,init}})
#define ast_or(l,r) ast_new((AST){ A_OR, .logic_or = {l,r}})
#define ast_and(l,r) ast_new((AST){ A_AND, .logic_or = {l,r}})
#define ast_function(params,body) ast_new((AST){ A_FUNCTION, .function = {params,body}})
#define ast_call(callable,args,paren) ast_new((AST){ A_CALL, .call = {callable,args,paren}})
#define ast_print(expr) ast_new((AST){ A_PRINT, .print = {expr}})

#endif /* AST_H */

