#!/bin/sh

cd wasm

zig cc --target=wasm32-wasi -shared \
    -Os -o module.wasm ../src/*.c
    #--sysroot /usr/share/wasi-sysroot \

