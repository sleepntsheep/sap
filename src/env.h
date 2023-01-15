#pragma once
#ifndef SAP_ENV_H
#define SAP_ENV_H
#include <stdlib.h>
#include "sobject.h"

typedef struct Env Env;

Env *env_new(Env *parent);
SObject *env_lookup(Env *e, Token t);
void env_define(Env *e, Token t, SObject *o);
void env_assign(Env *e, Token t, SObject *o);
void env_free(Env *e);

#endif 

