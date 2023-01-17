#pragma once
#ifndef EVAL_H
#define EVAL_H
#include "ast.h"
#include "sobject.h"
#include "env.h"

SObject ast_eval(AST *ast, Env *env);

#endif /* EVAL_H */

