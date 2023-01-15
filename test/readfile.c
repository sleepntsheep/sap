#include <stdio.h>
#include <stdlib.h>

char *read_file(const char *path) {
    FILE *f = fopen(path, "r");
    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    fseek(f, 0, SEEK_SET);
    char *s = malloc(fsize + 1);
    fread(s, fsize, 1, f);
    fclose(f);
    s[fsize] = 0;
    return s;
}

