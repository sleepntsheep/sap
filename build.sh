#!/bin/sh

set -xe

clang -o sapc src/main.c \
    src/sstring.c src/sobject.c src/lexer.c src/parser.c src/ast.c src/token.c src/env.c src/eval.c src/error.c \
    -g -lm\
    -std=c11 -Wall -Wextra -Wimplicit-fallthrough -pedantic

