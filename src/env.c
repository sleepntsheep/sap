#include "env.h"
#include "sstring.h"
#include "error.h"
#include <string.h>

struct Env {
    struct Env *parent;
    /* TODO use hashmap or balanced bst instead of flatmap */
    SString *key;
    SObject **value;
    size_t length;
    size_t alloc;
};

Env *env_new(Env *parent) {
    Env *e = malloc(sizeof *e);
    e->parent = parent;
    e->alloc = 1 << 10;
    e->length = 0;
    e->key = malloc(sizeof e->key[0] * e->alloc);
    e->value = malloc(sizeof(e->value[0]) * e->alloc);
    return e;
}

static SObject** env_find(Env *e, Token t) {
    for (size_t i = 0; i < e->length; i++) {
        if (t.lexeme == e->key[i] || !strcmp(t.lexeme, e->key[i])) {
            return e->value + i;
        }
    }
    return NULL;
}

SObject *env_lookup(Env *e, Token t) {
    SObject **sv = env_find(e, t);
    if (!sv) {
        if (e->parent)
            return env_lookup(e->parent, t);
        else
            runtime_error(t, "env_lookup undeclared variable");
    }
    return *sv;
}

void env_define(Env *e, Token t, SObject *v) {
    SObject **sv = env_find(e, t);
    if (sv)
        runtime_error(t, "variable declared twice");
    if (e->length == e->alloc) {
        e->alloc *= 2;
        e->key = realloc(e->key, sizeof e->key[0] * e->alloc);
        e->value = realloc(e->value, sizeof e->value[0] * e->alloc);
    }
    e->key[e->length] = t.lexeme;
    e->value[e->length] = v;
    e->length++;
}

void env_assign(Env *e, Token t, SObject *o) {
    SObject **sv = env_find(e, t);
    if (!sv) {
        if (e->parent)
            env_assign(e->parent, t, o);
        else
            runtime_error(t, "env_assign undeclared variable");
    } else {
        *sv = o;
    }
}

void env_free(Env *e) {
    free(e->key);
    free(e->value);
    free(e);
}

