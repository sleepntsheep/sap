#include "sstring.h"
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static size_t first_2n_not_less_than(size_t x) {
    size_t res = 1;
    while (res < x) {
        res *= 2;
    }
    return res;
}

static SString sstring_ensure_alloc(SString string, size_t enough_for) {
    size_t newalloc = first_2n_not_less_than(enough_for + sstring_length(string));
    return sstring_realloc(string, newalloc);
}

struct string {
    size_t alloc;
    size_t len;
    char buf[];
};

struct string_array {
    size_t alloc;
    size_t len;
    SString buf[];
};

static struct string *sstring_getinfo(SString string) {
    return (struct string*)((char*)string - sizeof(struct string));
}

size_t sstring_alloc(SString string) {
    return sstring_getinfo(string)->alloc;
}

size_t sstring_length(SString string) {
    return sstring_getinfo(string)->len;
}

SString sstring_from(const char *cstr) {
    size_t len = strlen(cstr);
    struct string *string = malloc(sizeof *string + len + 1);
    if (!string) return NULL;
    string->alloc = len + 1;
    string->len = len;
    memcpy(string->buf, cstr, len);
    string->buf[len] = 0;
    return string->buf;
}

SString sstring_realloc(SString string, size_t newalloc) {
    if (string == NULL) return NULL;
    if (newalloc < sstring_alloc(string)) {
        return string;
    }
    sstring_getinfo(string)->alloc = newalloc;
    struct string *newstring = realloc(sstring_getinfo(string), sizeof(struct string) + newalloc);
    return newstring->buf;
}

SString sstring_cat(SString string, const char *cstr) {
    return sstring_catlen(string, cstr, strlen(cstr));
}

SString sstring_catlen(SString string, const char *cstr, size_t len) {
    if (string == NULL) return NULL;
    //if (len == 0) return string;
    string = sstring_ensure_alloc(string, len + 1);
    memcpy(string + sstring_length(string), cstr, len);
    string[sstring_length(string) + len] = 0;
    sstring_getinfo(string)->len += len;
    return string;
}

SString sstring_format(const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    size_t len = vsnprintf(NULL, 0, fmt, args);
    va_end(args);
    struct string *string = malloc(sizeof *string + len + 1);
    string->alloc = len + 1;
    string->len = len;
    va_start(args, fmt);
    vsnprintf(string->buf, len + 1, fmt, args);
    va_end(args);
    return string->buf;
}

void sstring_free(SString string) {
    if (string == NULL) return;
    free(sstring_getinfo(string));
}

