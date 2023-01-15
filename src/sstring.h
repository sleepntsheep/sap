#pragma once
#ifndef STRING_H
#define STRING_H

#include <stddef.h>

typedef char *SString;
typedef SString *StringArray;

SString sstring_from(const char *cstr);
#define sstring_new() sstring_from("")
SString sstring_format(const char *fmt, ...);
SString sstring_cat(SString string, const char *cstr);
SString sstring_catlen(SString string, const char *cstr, size_t len);
SString sstring_realloc(SString string, size_t newalloc);
size_t sstring_length(SString string);
void sstring_free(SString string);

#endif /* STRING_H */

