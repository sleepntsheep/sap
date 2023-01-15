#pragma once
#include <stdlib.h>
#include <stdio.h>
#include <stdnoreturn.h>
#include "token.h"

#define expect(x) \
    do { \
        if (!((x))) { \
            fprintf(stderr, "expect at %s:%d: %s\n", __FILE__, __LINE__, #x); \
            exit(1); \
        } \
    } while(0);

#define die(...) \
    do { \
        fprintf(stderr, "die at %s:%d: ", __FILE__, __LINE__); \
        fprintf(stderr, __VA_ARGS__); \
        exit(1); \
    } while(0);

noreturn void generic_error(const char *err, Token t, const char *f, ...);

#define runtime_error(...) generic_error("RuntimeError", __VA_ARGS__)
#define parse_error(...) generic_error("ParseError", __VA_ARGS__)
#define lex_error(...) generic_error("LexError", __VA_ARGS__)

