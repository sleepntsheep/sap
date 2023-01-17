#pragma once
#ifndef SAP_ENV_H
#define SAP_ENV_H
#include <stdlib.h>
#include "sobject.h"
#include "native.h"

typedef struct Env Env;

struct Env {
    struct Env *parent;
    /* TODO use hashmap or balanced bst instead of flatmap */
    size_t length;
    size_t alloc;
    SString *key;
    SObject *value;
};

void env_init(Env *e, Env *parent);
SObject env_lookup(Env *e, Token t);
void env_define(Env *e, Token t, SObject o);
void env_define_native(Env *e);
void env_assign(Env *e, Token t, SObject o);
void env_cleanup(Env *e);

#endif 

