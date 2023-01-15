#pragma once

#ifndef OBJECT_H
#define OBJECT_H
#include "sstring.h"
#include "token.h"
#include "ast.h"
#include <stdbool.h>

typedef enum {
    SObjNil,
    SObjFalse,
    SObjTrue,
    SObjNumber,
    SObjString,
    SObjTable,
    SObjFunction,
} SObjectType;

typedef struct {
    SObjectType type;
    union {
        double number;
        SString string;
        struct {
            TokenList *params;
            AST *body;
        } function;
    };
} SObject;

SObject *sobject_new(SObject o);
#define sobject_new_number(n) sobject_new((SObject){SObjNumber, .number = n})
#define sobject_new_nil() sobject_new((SObject){.type=SObjNil})
#define sobject_new_bool(b) sobject_new((SObject){.type = (b) ? SObjTrue : SObjFalse })
#define sobject_new_false() sobject_new_bool(0)
#define sobject_new_true() sobject_new_bool(1)
#define sobject_new_string(s) sobject_new((SObject){SObjString, .string = sstring_from(s)})
#define sobject_new_function(p,b) sobject_new((SObject){ SObjFunction, .function = {p,b}})

bool sobject_isequal(SObject *o, SObject *p);
bool sobject_istrue(SObject *o);
SString sobject_to_string(SObject *o);
SObject *sobject_add(SObject *a, SObject *b);
void sobject_free(SObject *o);

#endif /* OBJECT_H */

