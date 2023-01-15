#include "sobject.h"
#include "error.h"
#include "sstring.h"
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

SObject *sobject_new(SObject o) {
    SObject *p = malloc(sizeof *p);
    *p = o;
    return p;
}

bool sobject_istrue(SObject *o) {
    switch (o->type) {
        case SObjFalse:
        case SObjNil:
            return false;
        default:
            return true;
    }
}

bool sobject_isequal(SObject *o, SObject *p) {
    if (o->type != p->type) return false;
    switch (o->type) {
        case SObjNil:
        case SObjTrue:
        case SObjFalse:
            return true;
        case SObjNumber:
            return o->number == p->number;
        case SObjString:
            return !strcmp(o->string, p->string);
        case SObjTable:
        case SObjFunction:
            die("Unimp");
    }
}

SString sobject_to_string(SObject *o) {
    switch (o->type) {
        case SObjFalse:
            return sstring_from("false");
        case SObjTrue:
            return sstring_from("true");
        case SObjNil:
            return sstring_from("nil");
        case SObjNumber:
            return sstring_format("%g", o->number);
        case SObjString:
            return sstring_format("%s", o->string);
        case SObjTable:
            return sstring_format("<table: %p>", o);
        case SObjFunction:
            return sstring_format("<function: %p>", o);
    }
}

SObject *sobject_add(SObject *a, SObject *b) {
    if (a->type == SObjNumber && b->type == SObjNumber)
        return sobject_new_number(a->number + b->number);
    if (a->type == SObjString || b->type == SObjString) {
        SString r = sstring_new();
        r = sstring_cat(r, sobject_to_string(a));
        r = sstring_cat(r, sobject_to_string(b));
        sobject_free(a);
        sobject_free(b);
        return sobject_new_string(r);
    }
    return NULL;
}

void sobject_free(SObject *o) {
    switch (o->type) {
        case SObjString:
            sstring_free(o->string);
            break;
        case SObjFunction:
            tokenlist_free(o->function.params);
            break;
        default:
            break;
    }
    free(o);
}

