#include "native.h"
#include <stdlib.h>
#include <stdio.h>

SObject nt_print(SObjectList *args) {
    SString str = sobject_to_string(args->data[0]);
    printf("%s\n", str);
    sstring_free(str);
    return sobject_new_nil();
}

SObject nt_strlen(SObjectList *args) {
    if (args->data[0].type != SObjString)
        return sobject_new_nil();
    return sobject_new_number(sstring_length(args->data[0].string));
}

SObject nt_system(SObjectList *args) {
    if (args->data[0].type != SObjString)
        return sobject_new_nil();
    return sobject_new_number(system(args->data[0].string));
}

SObject nt_random(SObjectList *args) {
    double min = args->data[0].number;
    double max = args->data[1].number;
    double range = (max - min); 
    double div = RAND_MAX / range;
    return sobject_new_number(min + (rand() / div));
}

SObject nt_exit(SObjectList *args) {
    exit(args->data[0].number);
}

SObject nt_typeof(SObjectList *args) {
#define NX(a,b) case(a): return sobject_new_string(#b);
    switch (args->data[0].type) {
        NX(SObjNumber, number)
        NX(SObjNil, nil)
        NX(SObjFalse, false)
        NX(SObjTrue, true)
        NX(SObjTable, table)
        NX(SObjFunction, function)
        NX(SObjNativeFunction, nativefunction)
        NX(SObjString, string)
        NX(SObjList, list)
    }
#undef NX
}

SObject nt_list_push(SObjectList *args) {
    SObject list = args->data[0];
    SObject x = args->data[1];
    sobjectlist_push(list.list, x);
    return list;
}

SObject nt_list_set(SObjectList *args) {
    SObject list = args->data[0];
    SObject i = args->data[1];
    SObject x = args->data[2];
    list.list->data[(size_t)i.number] = x;
    return list;
}

SObject nt_list_len(SObjectList *args) {
    SObject list = args->data[0];
    return sobject_new_number(list.list->length);
}

