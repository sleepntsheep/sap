#include "ast.h"
#include "sobject.h"
#include "error.h"
#include "env.h"
#include <stdlib.h>

AST *ast_new(AST ast) {
    AST *p = malloc(sizeof *p);
    *p = ast;
    return p;
}

ASTList *astlist_new() {
    ASTList *l = malloc(sizeof *l);
    l->length = 0;
    l->alloc = 4;
    l->data = malloc(sizeof(AST*) * l->alloc);
    return l;
}

void astlist_push(ASTList *a, AST *x) {
    if (a->length == a->alloc) {
        a->alloc *= 2;
        a->data = realloc(a->data, a->alloc * sizeof(AST*));
    }
    a->data[a->length++] = x;
}

void astlist_free(ASTList *a) {
    free(a->data);
    free(a);
}


