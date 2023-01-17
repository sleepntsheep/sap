#include "sobject.h"
#include "error.h"
#include "sstring.h"
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

bool sobject_istrue(SObject o) {
    switch (o.type) {
        case SObjFalse:
        case SObjNil:
            return false;
        default:
            return true;
    }
}

bool sobject_isequal(SObject o, SObject p) {
    if (o.type != p.type) return false;
    switch (o.type) {
        case SObjNil:
        case SObjTrue:
        case SObjFalse:
            return true;
        case SObjNumber:
            return o.number == p.number;
        case SObjString:
            return !strcmp(o.string, p.string);
        case SObjTable:
        case SObjFunction:
        case SObjNativeFunction:
        case SObjList:
            return false;
    }
}

SString sobject_to_string(SObject o) {
    switch (o.type) {
        case SObjFalse:
            return sstring_from("false");
        case SObjTrue:
            return sstring_from("true");
        case SObjNil:
            return sstring_from("nil");
        case SObjNumber:
            return sstring_format("%g", o.number);
        case SObjString:
            return sstring_format("%s", o.string);
        case SObjTable:
            return sstring_format("<table: %p>", o);
        case SObjFunction:
            return sstring_format("<function: %p>", o);
        case SObjNativeFunction:
            return sstring_format("<native_function: %p>", o);
        case SObjList:
            return sstring_format("<list: %p>", o);
    }
}

SObject sobject_add(SObject a, SObject b) {
    if (a.type == SObjNumber && b.type == SObjNumber)
        return sobject_new_number(a.number + b.number);
    if (a.type == SObjString || b.type == SObjString) {
        SString r = sstring_new();
        r = sstring_cat(r, sobject_to_string(a));
        r = sstring_cat(r, sobject_to_string(b));
        return sobject_new_string(r);
    }
    return sobject_new_nil();
}

SObjectList *sobjectlist_new() {
    SObjectList *a = malloc(sizeof *a);
    a->length = 0;
    a->alloc = 4;
    a->data = malloc(sizeof(a->data[0]) * a->alloc);
    return a;
}

void sobjectlist_push(SObjectList *a, SObject o) {
    if (a->length == a->alloc)
        a->data = realloc(a->data, sizeof(a->data[0]) * (a->alloc *= 2));
    a->data[a->length++] = o;
}

void sobjectlist_free(SObjectList *a) {
    free(a->data);
    free(a);
}

