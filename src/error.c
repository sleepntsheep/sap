#include "error.h"
#include <stdarg.h>
#include <stdlib.h>


noreturn void generic_error(const char *err, Token t, const char *f, ...) {
    va_list ap;
    va_start(ap, f);
    fprintf(stderr, "%s near line %d col %d: %10s", err,
            t.span.row_start, t.span.col_start, t.lexeme);
    vfprintf(stderr, f, ap);
    va_end(ap);
    exit(1);
}

