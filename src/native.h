#pragma once
#ifndef NATIVE_H
#define NATIVE_H

#include "sobject.h"
#include "ast.h"
#include "env.h"

SObject nt_print(SObjectList *args);
SObject nt_strlen(SObjectList *args);
SObject nt_system(SObjectList *args);
SObject nt_random(SObjectList *args);
SObject nt_exit(SObjectList *args);
SObject nt_typeof(SObjectList *args);
SObject nt_list_push(SObjectList *args);
SObject nt_list_len(SObjectList *args);
SObject nt_list_set(SObjectList *args);

#endif

