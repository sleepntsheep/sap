#!/bin/sh

set -xe

clang -o sap src/*.c \
    -g -O3 \
    -lm \
    -std=c11 -Wall -Wextra -Wimplicit-fallthrough -pedantic

