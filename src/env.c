#include "env.h"
#include "sstring.h"
#include "error.h"
#include <string.h>
#include <stdlib.h>

void env_init(Env *e, Env *parent) {
    e->parent = parent;
    e->alloc = 1 << 5;
    e->length = 0;
    e->key = calloc(sizeof(e->key[0]), e->alloc);
    e->value = calloc(sizeof(e->value[0]), e->alloc);
}

static SObject* env_find(Env *e, const char *name) {
    for (size_t i = 0; i < e->length; i++) {
        if (name == e->key[i] || !strcmp(name, e->key[i])) {
            return e->value + i;
        }
    }
    return NULL;
}

SObject env_lookup(Env *e, Token t) {
    SObject *sv = env_find(e, t.lexeme);
    if (!sv) {
        if (e->parent)
            return env_lookup(e->parent, t);
        else
            runtime_error(t, "env_lookup undeclared variable");
    }
    return *sv;
}

void env_define(Env *e, Token t, SObject v) {
    SObject *sv = env_find(e, t.lexeme);
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

void env_assign(Env *e, Token t, SObject o) {
    SObject *sv = env_find(e, t.lexeme);
    if (!sv) {
        if (e->parent)
            env_assign(e->parent, t, o);
        else
            runtime_error(t, "env_assign undeclared variable");
    } else {
        *sv = o;
    }
}

void env_define_native(Env *e) {
    env_define(e, (Token){.lexeme = "exit"}, sobject_new_native_function(1, &nt_exit));
    env_define(e, (Token){.lexeme = "print"}, sobject_new_native_function(1, &nt_print));
    env_define(e, (Token){.lexeme = "strlen"}, sobject_new_native_function(1, &nt_strlen));
    env_define(e, (Token){.lexeme = "system"}, sobject_new_native_function(1, &nt_system));
    env_define(e, (Token){.lexeme = "random"}, sobject_new_native_function(1, &nt_random));
    env_define(e, (Token){.lexeme = "typeof"}, sobject_new_native_function(1, &nt_typeof));
    env_define(e, (Token){.lexeme = "list_push"}, sobject_new_native_function(2, &nt_list_push));
    env_define(e, (Token){.lexeme = "list_set"}, sobject_new_native_function(3, &nt_list_set));
}

void env_cleanup(Env *e) {
    free(e->key);
    free(e->value);
}

