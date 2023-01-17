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
    SObjList,
    SObjTable,
    SObjFunction,
    SObjNativeFunction,
} SObjectType;

typedef struct SObjectList SObjectList;
typedef struct SObject SObject;

struct SObject {
    SObjectType type;
    union {
        double number;
        SString string;
        SObjectList *list;
        struct {
            TokenList *params;
            AST *body;
        } function;
        struct {
            int arity;
            SObject (*callback)(SObjectList *args);
        } native_function;
    };
};

_Static_assert(sizeof(SObject) < 30, "sizeof SObject too big");

#define sobject_new_number(n) ((SObject){SObjNumber, .number = n})
#define sobject_new_nil() ((SObject){.type=SObjNil})
#define sobject_new_bool(b) ((SObject){.type = (b) ? SObjTrue : SObjFalse })
#define sobject_new_false() sobject_new_bool(0)
#define sobject_new_true() sobject_new_bool(1)
#define sobject_new_string(s) ((SObject){SObjString, .string = sstring_from(s)})
#define sobject_new_list(l) ((SObject){ SObjList, .list = l})
#define sobject_new_function(p,b) ((SObject){ SObjFunction, .function = {p,b}})
#define sobject_new_native_function(arity,callback) ((SObject){ SObjNativeFunction, \
        .native_function = {arity,callback}})

bool sobject_isequal(SObject o, SObject p);
bool sobject_istrue(SObject o);
SString sobject_to_string(SObject o);
SObject sobject_add(SObject a, SObject b);

struct SObjectList {
    size_t alloc;
    size_t length;
    SObject *data;
};

SObjectList *sobjectlist_new();
void sobjectlist_push(SObjectList *a, SObject o);
void sobjectlist_free(SObjectList *a);

#endif /* OBJECT_H */

