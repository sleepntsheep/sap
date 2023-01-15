#pragma once
#ifndef SAP_LEXER_H
#define SAP_LEXER_H
#include "token.h"
#include <stddef.h>

typedef struct Lexer Lexer;

TokenList *lex(const char *code, size_t len);

#endif /* SAP_LEXER_H */

