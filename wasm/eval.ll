; ModuleID = '../src/eval.c'
source_filename = "../src/eval.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct.SObject = type { i32, %union.anon }
%union.anon = type { double }
%struct.AST = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.Token, double }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }
%struct.Env = type opaque
%struct.anon.1 = type { %struct.AST*, %struct.AST* }
%struct.anon.2 = type { %struct.AST*, %struct.AST* }
%struct.anon.5 = type { %struct.Token, %struct.AST* }
%struct.anon.4 = type { %struct.AST*, %struct.Token, %struct.AST* }
%struct.anon.8 = type { %struct.Token }
%struct.anon.7 = type { %struct.Token, %struct.AST* }
%struct.anon.9 = type { %struct.AST*, %struct.AST*, %struct.AST* }
%struct.anon.10 = type { %struct.AST*, %struct.AST* }
%struct.anon.11 = type { %struct.ASTList* }
%struct.ASTList = type { i32, i32, %struct.AST** }
%struct.anon = type { %struct.TokenList*, %struct.AST* }
%struct.TokenList = type { i32, i32, %struct.Token* }
%struct.anon.12 = type { %struct.TokenList*, %struct.AST* }
%struct.anon.13 = type { %struct.AST*, %struct.ASTList*, %struct.Token }
%struct.anon.14 = type { %struct.AST* }

@.str = private unnamed_addr constant [13 x i8] c"RuntimeError\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Wrong operator for unary: %s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"invalid operand type for binary operator + \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Wrong operator for binary: %s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Not a literal\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Object not callable\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Function take %d parameters but only %d arguments given\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_or_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %7 = load %struct.AST*, %struct.AST** %4, align 4
  %8 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 1
  %9 = bitcast %union.anon.0* %8 to %struct.anon.1*
  %10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %9, i32 0, i32 0
  %11 = load %struct.AST*, %struct.AST** %10, align 8
  %12 = load %struct.Env*, %struct.Env** %5, align 4
  %13 = call %struct.SObject* @ast_eval(%struct.AST* noundef %11, %struct.Env* noundef %12)
  store %struct.SObject* %13, %struct.SObject** %6, align 4
  %14 = load %struct.SObject*, %struct.SObject** %6, align 4
  %15 = call zeroext i1 @sobject_istrue(%struct.SObject* noundef %14)
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.SObject*, %struct.SObject** %6, align 4
  store %struct.SObject* %17, %struct.SObject** %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.AST*, %struct.AST** %4, align 4
  %20 = getelementptr inbounds %struct.AST, %struct.AST* %19, i32 0, i32 1
  %21 = bitcast %union.anon.0* %20 to %struct.anon.1*
  %22 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %21, i32 0, i32 1
  %23 = load %struct.AST*, %struct.AST** %22, align 4
  %24 = load %struct.Env*, %struct.Env** %5, align 4
  %25 = call %struct.SObject* @ast_eval(%struct.AST* noundef %23, %struct.Env* noundef %24)
  store %struct.SObject* %25, %struct.SObject** %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %27
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %6 = load %struct.AST*, %struct.AST** %4, align 4
  %7 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %65 [
    i32 3, label %9
    i32 2, label %13
    i32 0, label %17
    i32 1, label %21
    i32 6, label %25
    i32 5, label %29
    i32 4, label %33
    i32 7, label %37
    i32 8, label %41
    i32 9, label %45
    i32 10, label %49
    i32 11, label %53
    i32 13, label %57
    i32 12, label %61
  ]

9:                                                ; preds = %2
  %10 = load %struct.AST*, %struct.AST** %4, align 4
  %11 = load %struct.Env*, %struct.Env** %5, align 4
  %12 = call %struct.SObject* @ast_binary_eval(%struct.AST* noundef %10, %struct.Env* noundef %11)
  store %struct.SObject* %12, %struct.SObject** %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.AST*, %struct.AST** %4, align 4
  %15 = load %struct.Env*, %struct.Env** %5, align 4
  %16 = call %struct.SObject* @ast_unary_eval(%struct.AST* noundef %14, %struct.Env* noundef %15)
  store %struct.SObject* %16, %struct.SObject** %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.AST*, %struct.AST** %4, align 4
  %19 = load %struct.Env*, %struct.Env** %5, align 4
  %20 = call %struct.SObject* @ast_or_eval(%struct.AST* noundef %18, %struct.Env* noundef %19)
  store %struct.SObject* %20, %struct.SObject** %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.AST*, %struct.AST** %4, align 4
  %23 = load %struct.Env*, %struct.Env** %5, align 4
  %24 = call %struct.SObject* @ast_and_eval(%struct.AST* noundef %22, %struct.Env* noundef %23)
  store %struct.SObject* %24, %struct.SObject** %3, align 4
  br label %65

25:                                               ; preds = %2
  %26 = load %struct.AST*, %struct.AST** %4, align 4
  %27 = load %struct.Env*, %struct.Env** %5, align 4
  %28 = call %struct.SObject* @ast_literal_eval(%struct.AST* noundef %26, %struct.Env* noundef %27)
  store %struct.SObject* %28, %struct.SObject** %3, align 4
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.AST*, %struct.AST** %4, align 4
  %31 = load %struct.Env*, %struct.Env** %5, align 4
  %32 = call %struct.SObject* @ast_assignment_eval(%struct.AST* noundef %30, %struct.Env* noundef %31)
  store %struct.SObject* %32, %struct.SObject** %3, align 4
  br label %65

33:                                               ; preds = %2
  %34 = load %struct.AST*, %struct.AST** %4, align 4
  %35 = load %struct.Env*, %struct.Env** %5, align 4
  %36 = call %struct.SObject* @ast_declaration_eval(%struct.AST* noundef %34, %struct.Env* noundef %35)
  store %struct.SObject* %36, %struct.SObject** %3, align 4
  br label %65

37:                                               ; preds = %2
  %38 = load %struct.AST*, %struct.AST** %4, align 4
  %39 = load %struct.Env*, %struct.Env** %5, align 4
  %40 = call %struct.SObject* @ast_variable_eval(%struct.AST* noundef %38, %struct.Env* noundef %39)
  store %struct.SObject* %40, %struct.SObject** %3, align 4
  br label %65

41:                                               ; preds = %2
  %42 = load %struct.AST*, %struct.AST** %4, align 4
  %43 = load %struct.Env*, %struct.Env** %5, align 4
  %44 = call %struct.SObject* @ast_if_eval(%struct.AST* noundef %42, %struct.Env* noundef %43)
  store %struct.SObject* %44, %struct.SObject** %3, align 4
  br label %65

45:                                               ; preds = %2
  %46 = load %struct.AST*, %struct.AST** %4, align 4
  %47 = load %struct.Env*, %struct.Env** %5, align 4
  %48 = call %struct.SObject* @ast_while_eval(%struct.AST* noundef %46, %struct.Env* noundef %47)
  store %struct.SObject* %48, %struct.SObject** %3, align 4
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.AST*, %struct.AST** %4, align 4
  %51 = load %struct.Env*, %struct.Env** %5, align 4
  %52 = call %struct.SObject* @ast_block_eval(%struct.AST* noundef %50, %struct.Env* noundef %51)
  store %struct.SObject* %52, %struct.SObject** %3, align 4
  br label %65

53:                                               ; preds = %2
  %54 = load %struct.AST*, %struct.AST** %4, align 4
  %55 = load %struct.Env*, %struct.Env** %5, align 4
  %56 = call %struct.SObject* @ast_function_eval(%struct.AST* noundef %54, %struct.Env* noundef %55)
  store %struct.SObject* %56, %struct.SObject** %3, align 4
  br label %65

57:                                               ; preds = %2
  %58 = load %struct.AST*, %struct.AST** %4, align 4
  %59 = load %struct.Env*, %struct.Env** %5, align 4
  %60 = call %struct.SObject* @ast_print_eval(%struct.AST* noundef %58, %struct.Env* noundef %59)
  store %struct.SObject* %60, %struct.SObject** %3, align 4
  br label %65

61:                                               ; preds = %2
  %62 = load %struct.AST*, %struct.AST** %4, align 4
  %63 = load %struct.Env*, %struct.Env** %5, align 4
  %64 = call %struct.SObject* @ast_call_eval(%struct.AST* noundef %62, %struct.Env* noundef %63)
  store %struct.SObject* %64, %struct.SObject** %3, align 4
  br label %65

65:                                               ; preds = %9, %13, %17, %21, %25, %29, %33, %37, %41, %45, %49, %53, %57, %61, %2
  %66 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %66
}

declare zeroext i1 @sobject_istrue(%struct.SObject* noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_and_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %7 = load %struct.AST*, %struct.AST** %4, align 4
  %8 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 1
  %9 = bitcast %union.anon.0* %8 to %struct.anon.2*
  %10 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %11 = load %struct.AST*, %struct.AST** %10, align 8
  %12 = load %struct.Env*, %struct.Env** %5, align 4
  %13 = call %struct.SObject* @ast_eval(%struct.AST* noundef %11, %struct.Env* noundef %12)
  store %struct.SObject* %13, %struct.SObject** %6, align 4
  %14 = load %struct.SObject*, %struct.SObject** %6, align 4
  %15 = call zeroext i1 @sobject_istrue(%struct.SObject* noundef %14)
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load %struct.SObject*, %struct.SObject** %6, align 4
  store %struct.SObject* %17, %struct.SObject** %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.AST*, %struct.AST** %4, align 4
  %20 = getelementptr inbounds %struct.AST, %struct.AST* %19, i32 0, i32 1
  %21 = bitcast %union.anon.0* %20 to %struct.anon.2*
  %22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %21, i32 0, i32 1
  %23 = load %struct.AST*, %struct.AST** %22, align 4
  %24 = load %struct.Env*, %struct.Env** %5, align 4
  %25 = call %struct.SObject* @ast_eval(%struct.AST* noundef %23, %struct.Env* noundef %24)
  store %struct.SObject* %25, %struct.SObject** %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %27
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_unary_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  %7 = alloca %struct.SObject, align 8
  %8 = alloca %struct.SObject, align 8
  %9 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %10 = load %struct.AST*, %struct.AST** %4, align 4
  %11 = getelementptr inbounds %struct.AST, %struct.AST* %10, i32 0, i32 1
  %12 = bitcast %union.anon.0* %11 to %struct.anon.5*
  %13 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %12, i32 0, i32 1
  %14 = load %struct.AST*, %struct.AST** %13, align 8
  %15 = load %struct.Env*, %struct.Env** %5, align 4
  %16 = call %struct.SObject* @ast_eval(%struct.AST* noundef %14, %struct.Env* noundef %15)
  store %struct.SObject* %16, %struct.SObject** %6, align 4
  %17 = load %struct.AST*, %struct.AST** %4, align 4
  %18 = getelementptr inbounds %struct.AST, %struct.AST* %17, i32 0, i32 1
  %19 = bitcast %union.anon.0* %18 to %struct.anon.5*
  %20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.Token, %struct.Token* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %54 [
    i32 9, label %23
    i32 8, label %39
  ]

23:                                               ; preds = %2
  %24 = load %struct.SObject*, %struct.SObject** %6, align 4
  %25 = getelementptr inbounds %struct.SObject, %struct.SObject* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 0
  store i32 3, i32* %29, align 8
  %30 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 1
  %31 = bitcast %union.anon* %30 to double*
  %32 = load %struct.SObject*, %struct.SObject** %6, align 4
  %33 = getelementptr inbounds %struct.SObject, %struct.SObject* %32, i32 0, i32 1
  %34 = bitcast %union.anon* %33 to double*
  %35 = load double, double* %34, align 8
  %36 = fneg double %35
  store double %36, double* %31, align 8
  %37 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %7)
  store %struct.SObject* %37, %struct.SObject** %3, align 4
  br label %71

38:                                               ; preds = %23
  br label %66

39:                                               ; preds = %2
  %40 = load %struct.SObject*, %struct.SObject** %6, align 4
  %41 = getelementptr inbounds %struct.SObject, %struct.SObject* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.SObject, %struct.SObject* %8, i32 0, i32 0
  store i32 3, i32* %45, align 8
  %46 = getelementptr inbounds %struct.SObject, %struct.SObject* %8, i32 0, i32 1
  %47 = bitcast %union.anon* %46 to double*
  %48 = load %struct.SObject*, %struct.SObject** %6, align 4
  %49 = getelementptr inbounds %struct.SObject, %struct.SObject* %48, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to double*
  %51 = load double, double* %50, align 8
  store double %51, double* %47, align 8
  %52 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %8)
  store %struct.SObject* %52, %struct.SObject** %3, align 4
  br label %71

53:                                               ; preds = %39
  br label %66

54:                                               ; preds = %2
  %55 = load %struct.AST*, %struct.AST** %4, align 4
  %56 = getelementptr inbounds %struct.AST, %struct.AST* %55, i32 0, i32 1
  %57 = bitcast %union.anon.0* %56 to %struct.anon.5*
  %58 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %57, i32 0, i32 0
  %59 = load %struct.AST*, %struct.AST** %4, align 4
  %60 = getelementptr inbounds %struct.AST, %struct.AST* %59, i32 0, i32 1
  %61 = bitcast %union.anon.0* %60 to %struct.anon.4*
  %62 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.Token, %struct.Token* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @tokentype_str(i32 noundef %64)
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %58, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* noundef %65) #5
  unreachable

66:                                               ; preds = %53, %38
  %67 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 1
  %69 = bitcast %union.anon* %68 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %69, i8 0, i32 8, i1 false)
  %70 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %9)
  store %struct.SObject* %70, %struct.SObject** %3, align 4
  br label %71

71:                                               ; preds = %66, %44, %28
  %72 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %72
}

declare %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8) #1

; Function Attrs: noreturn
declare void @generic_error(i8* noundef, %struct.Token* noundef byval(%struct.Token) align 4, i8* noundef, ...) #2

declare i8* @tokentype_str(i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_binary_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  %7 = alloca %struct.SObject*, align 4
  %8 = alloca %struct.SObject*, align 4
  %9 = alloca %struct.SObject, align 8
  %10 = alloca %struct.SObject, align 8
  %11 = alloca %struct.SObject, align 8
  %12 = alloca %struct.SObject, align 8
  %13 = alloca %struct.SObject, align 8
  %14 = alloca %struct.SObject, align 8
  %15 = alloca %struct.SObject, align 8
  %16 = alloca %struct.SObject, align 8
  %17 = alloca %struct.SObject, align 8
  %18 = alloca %struct.SObject, align 8
  %19 = alloca %struct.SObject, align 8
  %20 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %21 = load %struct.AST*, %struct.AST** %4, align 4
  %22 = getelementptr inbounds %struct.AST, %struct.AST* %21, i32 0, i32 1
  %23 = bitcast %union.anon.0* %22 to %struct.anon.4*
  %24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %23, i32 0, i32 0
  %25 = load %struct.AST*, %struct.AST** %24, align 8
  %26 = load %struct.Env*, %struct.Env** %5, align 4
  %27 = call %struct.SObject* @ast_eval(%struct.AST* noundef %25, %struct.Env* noundef %26)
  store %struct.SObject* %27, %struct.SObject** %6, align 4
  %28 = load %struct.AST*, %struct.AST** %4, align 4
  %29 = getelementptr inbounds %struct.AST, %struct.AST* %28, i32 0, i32 1
  %30 = bitcast %union.anon.0* %29 to %struct.anon.4*
  %31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %30, i32 0, i32 2
  %32 = load %struct.AST*, %struct.AST** %31, align 4
  %33 = load %struct.Env*, %struct.Env** %5, align 4
  %34 = call %struct.SObject* @ast_eval(%struct.AST* noundef %32, %struct.Env* noundef %33)
  store %struct.SObject* %34, %struct.SObject** %7, align 4
  store %struct.SObject* null, %struct.SObject** %8, align 4
  %35 = load %struct.AST*, %struct.AST** %4, align 4
  %36 = getelementptr inbounds %struct.AST, %struct.AST* %35, i32 0, i32 1
  %37 = bitcast %union.anon.0* %36 to %struct.anon.4*
  %38 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.Token, %struct.Token* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %289 [
    i32 13, label %41
    i32 14, label %51
    i32 18, label %62
    i32 17, label %89
    i32 8, label %116
    i32 33, label %145
    i32 9, label %164
    i32 10, label %189
    i32 11, label %214
    i32 12, label %239
    i32 22, label %264
  ]

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 0
  %43 = load %struct.SObject*, %struct.SObject** %6, align 4
  %44 = load %struct.SObject*, %struct.SObject** %7, align 4
  %45 = call zeroext i1 @sobject_isequal(%struct.SObject* noundef %43, %struct.SObject* noundef %44)
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  store i32 %47, i32* %42, align 8
  %48 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 1
  %49 = bitcast %union.anon* %48 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %49, i8 0, i32 8, i1 false)
  %50 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %9)
  store %struct.SObject* %50, %struct.SObject** %3, align 4
  br label %306

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.SObject, %struct.SObject* %10, i32 0, i32 0
  %53 = load %struct.SObject*, %struct.SObject** %6, align 4
  %54 = load %struct.SObject*, %struct.SObject** %7, align 4
  %55 = call zeroext i1 @sobject_isequal(%struct.SObject* noundef %53, %struct.SObject* noundef %54)
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 1
  store i32 %58, i32* %52, align 8
  %59 = getelementptr inbounds %struct.SObject, %struct.SObject* %10, i32 0, i32 1
  %60 = bitcast %union.anon* %59 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %60, i8 0, i32 8, i1 false)
  %61 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %10)
  store %struct.SObject* %61, %struct.SObject** %3, align 4
  br label %306

62:                                               ; preds = %2
  %63 = load %struct.SObject*, %struct.SObject** %6, align 4
  %64 = getelementptr inbounds %struct.SObject, %struct.SObject* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load %struct.SObject*, %struct.SObject** %7, align 4
  %69 = getelementptr inbounds %struct.SObject, %struct.SObject* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.SObject, %struct.SObject* %11, i32 0, i32 0
  %74 = load %struct.SObject*, %struct.SObject** %6, align 4
  %75 = getelementptr inbounds %struct.SObject, %struct.SObject* %74, i32 0, i32 1
  %76 = bitcast %union.anon* %75 to double*
  %77 = load double, double* %76, align 8
  %78 = load %struct.SObject*, %struct.SObject** %7, align 4
  %79 = getelementptr inbounds %struct.SObject, %struct.SObject* %78, i32 0, i32 1
  %80 = bitcast %union.anon* %79 to double*
  %81 = load double, double* %80, align 8
  %82 = fcmp ole double %77, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 2, i32 1
  store i32 %84, i32* %73, align 8
  %85 = getelementptr inbounds %struct.SObject, %struct.SObject* %11, i32 0, i32 1
  %86 = bitcast %union.anon* %85 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %86, i8 0, i32 8, i1 false)
  %87 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %11)
  store %struct.SObject* %87, %struct.SObject** %3, align 4
  br label %306

88:                                               ; preds = %67, %62
  br label %301

89:                                               ; preds = %2
  %90 = load %struct.SObject*, %struct.SObject** %6, align 4
  %91 = getelementptr inbounds %struct.SObject, %struct.SObject* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %115

94:                                               ; preds = %89
  %95 = load %struct.SObject*, %struct.SObject** %7, align 4
  %96 = getelementptr inbounds %struct.SObject, %struct.SObject* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.SObject, %struct.SObject* %12, i32 0, i32 0
  %101 = load %struct.SObject*, %struct.SObject** %6, align 4
  %102 = getelementptr inbounds %struct.SObject, %struct.SObject* %101, i32 0, i32 1
  %103 = bitcast %union.anon* %102 to double*
  %104 = load double, double* %103, align 8
  %105 = load %struct.SObject*, %struct.SObject** %7, align 4
  %106 = getelementptr inbounds %struct.SObject, %struct.SObject* %105, i32 0, i32 1
  %107 = bitcast %union.anon* %106 to double*
  %108 = load double, double* %107, align 8
  %109 = fcmp oge double %104, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 2, i32 1
  store i32 %111, i32* %100, align 8
  %112 = getelementptr inbounds %struct.SObject, %struct.SObject* %12, i32 0, i32 1
  %113 = bitcast %union.anon* %112 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %113, i8 0, i32 8, i1 false)
  %114 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %12)
  store %struct.SObject* %114, %struct.SObject** %3, align 4
  br label %306

115:                                              ; preds = %94, %89
  br label %301

116:                                              ; preds = %2
  %117 = load %struct.SObject*, %struct.SObject** %6, align 4
  %118 = getelementptr inbounds %struct.SObject, %struct.SObject* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  %122 = load %struct.SObject*, %struct.SObject** %7, align 4
  %123 = getelementptr inbounds %struct.SObject, %struct.SObject* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.SObject, %struct.SObject* %13, i32 0, i32 0
  store i32 3, i32* %127, align 8
  %128 = getelementptr inbounds %struct.SObject, %struct.SObject* %13, i32 0, i32 1
  %129 = bitcast %union.anon* %128 to double*
  %130 = load %struct.SObject*, %struct.SObject** %6, align 4
  %131 = getelementptr inbounds %struct.SObject, %struct.SObject* %130, i32 0, i32 1
  %132 = bitcast %union.anon* %131 to double*
  %133 = load double, double* %132, align 8
  %134 = load %struct.SObject*, %struct.SObject** %7, align 4
  %135 = getelementptr inbounds %struct.SObject, %struct.SObject* %134, i32 0, i32 1
  %136 = bitcast %union.anon* %135 to double*
  %137 = load double, double* %136, align 8
  %138 = fadd double %133, %137
  store double %138, double* %129, align 8
  %139 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %13)
  store %struct.SObject* %139, %struct.SObject** %3, align 4
  br label %306

140:                                              ; preds = %121, %116
  %141 = load %struct.AST*, %struct.AST** %4, align 4
  %142 = getelementptr inbounds %struct.AST, %struct.AST* %141, i32 0, i32 1
  %143 = bitcast %union.anon.0* %142 to %struct.anon.4*
  %144 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %143, i32 0, i32 1
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %144, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

145:                                              ; preds = %2
  %146 = getelementptr inbounds %struct.SObject, %struct.SObject* %14, i32 0, i32 0
  store i32 4, i32* %146, align 8
  %147 = getelementptr inbounds %struct.SObject, %struct.SObject* %14, i32 0, i32 1
  %148 = bitcast %union.anon* %147 to i8**
  %149 = load %struct.SObject*, %struct.SObject** %6, align 4
  %150 = call i8* @sobject_to_string(%struct.SObject* noundef %149)
  %151 = call i8* @sstring_from(i8* noundef %150)
  store i8* %151, i8** %148, align 8
  %152 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %14)
  store %struct.SObject* %152, %struct.SObject** %8, align 4
  %153 = load %struct.SObject*, %struct.SObject** %8, align 4
  %154 = getelementptr inbounds %struct.SObject, %struct.SObject* %153, i32 0, i32 1
  %155 = bitcast %union.anon* %154 to i8**
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.SObject*, %struct.SObject** %7, align 4
  %158 = call i8* @sobject_to_string(%struct.SObject* noundef %157)
  %159 = call i8* @sstring_cat(i8* noundef %156, i8* noundef %158)
  %160 = load %struct.SObject*, %struct.SObject** %8, align 4
  %161 = getelementptr inbounds %struct.SObject, %struct.SObject* %160, i32 0, i32 1
  %162 = bitcast %union.anon* %161 to i8**
  store i8* %159, i8** %162, align 8
  %163 = load %struct.SObject*, %struct.SObject** %8, align 4
  store %struct.SObject* %163, %struct.SObject** %3, align 4
  br label %306

164:                                              ; preds = %2
  %165 = load %struct.SObject*, %struct.SObject** %6, align 4
  %166 = getelementptr inbounds %struct.SObject, %struct.SObject* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %188

169:                                              ; preds = %164
  %170 = load %struct.SObject*, %struct.SObject** %7, align 4
  %171 = getelementptr inbounds %struct.SObject, %struct.SObject* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %188

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.SObject, %struct.SObject* %15, i32 0, i32 0
  store i32 3, i32* %175, align 8
  %176 = getelementptr inbounds %struct.SObject, %struct.SObject* %15, i32 0, i32 1
  %177 = bitcast %union.anon* %176 to double*
  %178 = load %struct.SObject*, %struct.SObject** %6, align 4
  %179 = getelementptr inbounds %struct.SObject, %struct.SObject* %178, i32 0, i32 1
  %180 = bitcast %union.anon* %179 to double*
  %181 = load double, double* %180, align 8
  %182 = load %struct.SObject*, %struct.SObject** %7, align 4
  %183 = getelementptr inbounds %struct.SObject, %struct.SObject* %182, i32 0, i32 1
  %184 = bitcast %union.anon* %183 to double*
  %185 = load double, double* %184, align 8
  %186 = fsub double %181, %185
  store double %186, double* %177, align 8
  %187 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %15)
  store %struct.SObject* %187, %struct.SObject** %3, align 4
  br label %306

188:                                              ; preds = %169, %164
  br label %301

189:                                              ; preds = %2
  %190 = load %struct.SObject*, %struct.SObject** %6, align 4
  %191 = getelementptr inbounds %struct.SObject, %struct.SObject* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %213

194:                                              ; preds = %189
  %195 = load %struct.SObject*, %struct.SObject** %7, align 4
  %196 = getelementptr inbounds %struct.SObject, %struct.SObject* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %213

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.SObject, %struct.SObject* %16, i32 0, i32 0
  store i32 3, i32* %200, align 8
  %201 = getelementptr inbounds %struct.SObject, %struct.SObject* %16, i32 0, i32 1
  %202 = bitcast %union.anon* %201 to double*
  %203 = load %struct.SObject*, %struct.SObject** %6, align 4
  %204 = getelementptr inbounds %struct.SObject, %struct.SObject* %203, i32 0, i32 1
  %205 = bitcast %union.anon* %204 to double*
  %206 = load double, double* %205, align 8
  %207 = load %struct.SObject*, %struct.SObject** %7, align 4
  %208 = getelementptr inbounds %struct.SObject, %struct.SObject* %207, i32 0, i32 1
  %209 = bitcast %union.anon* %208 to double*
  %210 = load double, double* %209, align 8
  %211 = fmul double %206, %210
  store double %211, double* %202, align 8
  %212 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %16)
  store %struct.SObject* %212, %struct.SObject** %3, align 4
  br label %306

213:                                              ; preds = %194, %189
  br label %301

214:                                              ; preds = %2
  %215 = load %struct.SObject*, %struct.SObject** %6, align 4
  %216 = getelementptr inbounds %struct.SObject, %struct.SObject* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %238

219:                                              ; preds = %214
  %220 = load %struct.SObject*, %struct.SObject** %7, align 4
  %221 = getelementptr inbounds %struct.SObject, %struct.SObject* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 3
  br i1 %223, label %224, label %238

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.SObject, %struct.SObject* %17, i32 0, i32 0
  store i32 3, i32* %225, align 8
  %226 = getelementptr inbounds %struct.SObject, %struct.SObject* %17, i32 0, i32 1
  %227 = bitcast %union.anon* %226 to double*
  %228 = load %struct.SObject*, %struct.SObject** %6, align 4
  %229 = getelementptr inbounds %struct.SObject, %struct.SObject* %228, i32 0, i32 1
  %230 = bitcast %union.anon* %229 to double*
  %231 = load double, double* %230, align 8
  %232 = load %struct.SObject*, %struct.SObject** %7, align 4
  %233 = getelementptr inbounds %struct.SObject, %struct.SObject* %232, i32 0, i32 1
  %234 = bitcast %union.anon* %233 to double*
  %235 = load double, double* %234, align 8
  %236 = fdiv double %231, %235
  store double %236, double* %227, align 8
  %237 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %17)
  store %struct.SObject* %237, %struct.SObject** %3, align 4
  br label %306

238:                                              ; preds = %219, %214
  br label %301

239:                                              ; preds = %2
  %240 = load %struct.SObject*, %struct.SObject** %6, align 4
  %241 = getelementptr inbounds %struct.SObject, %struct.SObject* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 3
  br i1 %243, label %244, label %263

244:                                              ; preds = %239
  %245 = load %struct.SObject*, %struct.SObject** %7, align 4
  %246 = getelementptr inbounds %struct.SObject, %struct.SObject* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 3
  br i1 %248, label %249, label %263

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.SObject, %struct.SObject* %18, i32 0, i32 0
  store i32 3, i32* %250, align 8
  %251 = getelementptr inbounds %struct.SObject, %struct.SObject* %18, i32 0, i32 1
  %252 = bitcast %union.anon* %251 to double*
  %253 = load %struct.SObject*, %struct.SObject** %6, align 4
  %254 = getelementptr inbounds %struct.SObject, %struct.SObject* %253, i32 0, i32 1
  %255 = bitcast %union.anon* %254 to double*
  %256 = load double, double* %255, align 8
  %257 = load %struct.SObject*, %struct.SObject** %7, align 4
  %258 = getelementptr inbounds %struct.SObject, %struct.SObject* %257, i32 0, i32 1
  %259 = bitcast %union.anon* %258 to double*
  %260 = load double, double* %259, align 8
  %261 = frem double %256, %260
  store double %261, double* %252, align 8
  %262 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %18)
  store %struct.SObject* %262, %struct.SObject** %3, align 4
  br label %306

263:                                              ; preds = %244, %239
  br label %301

264:                                              ; preds = %2
  %265 = load %struct.SObject*, %struct.SObject** %6, align 4
  %266 = getelementptr inbounds %struct.SObject, %struct.SObject* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 3
  br i1 %268, label %269, label %288

269:                                              ; preds = %264
  %270 = load %struct.SObject*, %struct.SObject** %7, align 4
  %271 = getelementptr inbounds %struct.SObject, %struct.SObject* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 3
  br i1 %273, label %274, label %288

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.SObject, %struct.SObject* %19, i32 0, i32 0
  store i32 3, i32* %275, align 8
  %276 = getelementptr inbounds %struct.SObject, %struct.SObject* %19, i32 0, i32 1
  %277 = bitcast %union.anon* %276 to double*
  %278 = load %struct.SObject*, %struct.SObject** %6, align 4
  %279 = getelementptr inbounds %struct.SObject, %struct.SObject* %278, i32 0, i32 1
  %280 = bitcast %union.anon* %279 to double*
  %281 = load double, double* %280, align 8
  %282 = load %struct.SObject*, %struct.SObject** %7, align 4
  %283 = getelementptr inbounds %struct.SObject, %struct.SObject* %282, i32 0, i32 1
  %284 = bitcast %union.anon* %283 to double*
  %285 = load double, double* %284, align 8
  %286 = call double @llvm.pow.f64(double %281, double %285)
  store double %286, double* %277, align 8
  %287 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %19)
  store %struct.SObject* %287, %struct.SObject** %3, align 4
  br label %306

288:                                              ; preds = %269, %264
  br label %301

289:                                              ; preds = %2
  %290 = load %struct.AST*, %struct.AST** %4, align 4
  %291 = getelementptr inbounds %struct.AST, %struct.AST* %290, i32 0, i32 1
  %292 = bitcast %union.anon.0* %291 to %struct.anon.4*
  %293 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %292, i32 0, i32 1
  %294 = load %struct.AST*, %struct.AST** %4, align 4
  %295 = getelementptr inbounds %struct.AST, %struct.AST* %294, i32 0, i32 1
  %296 = bitcast %union.anon.0* %295 to %struct.anon.4*
  %297 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.Token, %struct.Token* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i8* @tokentype_str(i32 noundef %299)
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %293, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* noundef %300) #5
  unreachable

301:                                              ; preds = %288, %263, %238, %213, %188, %115, %88
  %302 = getelementptr inbounds %struct.SObject, %struct.SObject* %20, i32 0, i32 0
  store i32 0, i32* %302, align 8
  %303 = getelementptr inbounds %struct.SObject, %struct.SObject* %20, i32 0, i32 1
  %304 = bitcast %union.anon* %303 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %304, i8 0, i32 8, i1 false)
  %305 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %20)
  store %struct.SObject* %305, %struct.SObject** %3, align 4
  br label %306

306:                                              ; preds = %301, %274, %249, %224, %199, %174, %145, %126, %99, %72, %51, %41
  %307 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %307
}

declare zeroext i1 @sobject_isequal(%struct.SObject* noundef, %struct.SObject* noundef) #1

declare i8* @sstring_from(i8* noundef) #1

declare i8* @sobject_to_string(%struct.SObject* noundef) #1

declare i8* @sstring_cat(i8* noundef, i8* noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_variable_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %5 = load %struct.Env*, %struct.Env** %4, align 4
  %6 = load %struct.AST*, %struct.AST** %3, align 4
  %7 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %8 = bitcast %union.anon.0* %7 to %struct.anon.8*
  %9 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %8, i32 0, i32 0
  %10 = call %struct.SObject* @env_lookup(%struct.Env* noundef %5, %struct.Token* noundef byval(%struct.Token) align 4 %9)
  ret %struct.SObject* %10
}

declare %struct.SObject* @env_lookup(%struct.Env* noundef, %struct.Token* noundef byval(%struct.Token) align 4) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_literal_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject, align 8
  %7 = alloca %struct.SObject, align 8
  %8 = alloca %struct.SObject, align 8
  %9 = alloca %struct.SObject, align 8
  %10 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %11 = load %struct.Env*, %struct.Env** %5, align 4
  %12 = load %struct.AST*, %struct.AST** %4, align 4
  %13 = getelementptr inbounds %struct.AST, %struct.AST* %12, i32 0, i32 1
  %14 = bitcast %union.anon.0* %13 to %struct.anon.3*
  %15 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %57 [
    i32 7, label %18
    i32 6, label %30
    i32 24, label %42
    i32 23, label %47
    i32 25, label %52
  ]

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 1
  %21 = bitcast %union.anon* %20 to i8**
  %22 = load %struct.AST*, %struct.AST** %4, align 4
  %23 = getelementptr inbounds %struct.AST, %struct.AST* %22, i32 0, i32 1
  %24 = bitcast %union.anon.0* %23 to %struct.anon.3*
  %25 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.Token, %struct.Token* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 4
  %28 = call i8* @sstring_from(i8* noundef %27)
  store i8* %28, i8** %21, align 8
  %29 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %6)
  store %struct.SObject* %29, %struct.SObject** %3, align 4
  br label %62

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 0
  store i32 3, i32* %31, align 8
  %32 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 1
  %33 = bitcast %union.anon* %32 to double*
  %34 = load %struct.AST*, %struct.AST** %4, align 4
  %35 = getelementptr inbounds %struct.AST, %struct.AST* %34, i32 0, i32 1
  %36 = bitcast %union.anon.0* %35 to %struct.anon.3*
  %37 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.Token, %struct.Token* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 4
  %40 = call double @strtod(i8* noundef %39, i8** noundef null)
  store double %40, double* %33, align 8
  %41 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %7)
  store %struct.SObject* %41, %struct.SObject** %3, align 4
  br label %62

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.SObject, %struct.SObject* %8, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.SObject, %struct.SObject* %8, i32 0, i32 1
  %45 = bitcast %union.anon* %44 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %45, i8 0, i32 8, i1 false)
  %46 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %8)
  store %struct.SObject* %46, %struct.SObject** %3, align 4
  br label %62

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 0
  store i32 2, i32* %48, align 8
  %49 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %50, i8 0, i32 8, i1 false)
  %51 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %9)
  store %struct.SObject* %51, %struct.SObject** %3, align 4
  br label %62

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.SObject, %struct.SObject* %10, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.SObject, %struct.SObject* %10, i32 0, i32 1
  %55 = bitcast %union.anon* %54 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %55, i8 0, i32 8, i1 false)
  %56 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %10)
  store %struct.SObject* %56, %struct.SObject** %3, align 4
  br label %62

57:                                               ; preds = %2
  %58 = load %struct.AST*, %struct.AST** %4, align 4
  %59 = getelementptr inbounds %struct.AST, %struct.AST* %58, i32 0, i32 1
  %60 = bitcast %union.anon.0* %59 to %struct.anon.3*
  %61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %60, i32 0, i32 0
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %61, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable

62:                                               ; preds = %52, %47, %42, %30, %18
  %63 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %63
}

declare double @strtod(i8* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_declaration_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject*, align 4
  %6 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %7 = load %struct.AST*, %struct.AST** %3, align 4
  %8 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 1
  %9 = bitcast %union.anon.0* %8 to %struct.anon.7*
  %10 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %9, i32 0, i32 1
  %11 = load %struct.AST*, %struct.AST** %10, align 8
  %12 = icmp ne %struct.AST* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.AST*, %struct.AST** %3, align 4
  %15 = getelementptr inbounds %struct.AST, %struct.AST* %14, i32 0, i32 1
  %16 = bitcast %union.anon.0* %15 to %struct.anon.7*
  %17 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %16, i32 0, i32 1
  %18 = load %struct.AST*, %struct.AST** %17, align 8
  %19 = load %struct.Env*, %struct.Env** %4, align 4
  %20 = call %struct.SObject* @ast_eval(%struct.AST* noundef %18, %struct.Env* noundef %19)
  store %struct.SObject* %20, %struct.SObject** %5, align 4
  br label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 1
  %24 = bitcast %union.anon* %23 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %24, i8 0, i32 8, i1 false)
  %25 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %6)
  store %struct.SObject* %25, %struct.SObject** %5, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.Env*, %struct.Env** %4, align 4
  %28 = load %struct.AST*, %struct.AST** %3, align 4
  %29 = getelementptr inbounds %struct.AST, %struct.AST* %28, i32 0, i32 1
  %30 = bitcast %union.anon.0* %29 to %struct.anon.7*
  %31 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %30, i32 0, i32 0
  %32 = load %struct.SObject*, %struct.SObject** %5, align 4
  call void @env_define(%struct.Env* noundef %27, %struct.Token* noundef byval(%struct.Token) align 4 %31, %struct.SObject* noundef %32)
  %33 = load %struct.SObject*, %struct.SObject** %5, align 4
  ret %struct.SObject* %33
}

declare void @env_define(%struct.Env* noundef, %struct.Token* noundef byval(%struct.Token) align 4, %struct.SObject* noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_assignment_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject*, align 4
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %6 = load %struct.AST*, %struct.AST** %3, align 4
  %7 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %8 = bitcast %union.anon.0* %7 to %struct.anon.7*
  %9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %8, i32 0, i32 1
  %10 = load %struct.AST*, %struct.AST** %9, align 8
  %11 = load %struct.Env*, %struct.Env** %4, align 4
  %12 = call %struct.SObject* @ast_eval(%struct.AST* noundef %10, %struct.Env* noundef %11)
  store %struct.SObject* %12, %struct.SObject** %5, align 4
  %13 = load %struct.Env*, %struct.Env** %4, align 4
  %14 = load %struct.AST*, %struct.AST** %3, align 4
  %15 = getelementptr inbounds %struct.AST, %struct.AST* %14, i32 0, i32 1
  %16 = bitcast %union.anon.0* %15 to %struct.anon.7*
  %17 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %16, i32 0, i32 0
  %18 = load %struct.SObject*, %struct.SObject** %5, align 4
  call void @env_assign(%struct.Env* noundef %13, %struct.Token* noundef byval(%struct.Token) align 4 %17, %struct.SObject* noundef %18)
  %19 = load %struct.SObject*, %struct.SObject** %5, align 4
  ret %struct.SObject* %19
}

declare void @env_assign(%struct.Env* noundef, %struct.Token* noundef byval(%struct.Token) align 4, %struct.SObject* noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_if_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  %7 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %4, align 4
  store %struct.Env* %1, %struct.Env** %5, align 4
  %8 = load %struct.AST*, %struct.AST** %4, align 4
  %9 = getelementptr inbounds %struct.AST, %struct.AST* %8, i32 0, i32 1
  %10 = bitcast %union.anon.0* %9 to %struct.anon.9*
  %11 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %10, i32 0, i32 0
  %12 = load %struct.AST*, %struct.AST** %11, align 8
  %13 = load %struct.Env*, %struct.Env** %5, align 4
  %14 = call %struct.SObject* @ast_eval(%struct.AST* noundef %12, %struct.Env* noundef %13)
  store %struct.SObject* %14, %struct.SObject** %6, align 4
  %15 = load %struct.SObject*, %struct.SObject** %6, align 4
  %16 = call zeroext i1 @sobject_istrue(%struct.SObject* noundef %15)
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.AST*, %struct.AST** %4, align 4
  %19 = getelementptr inbounds %struct.AST, %struct.AST* %18, i32 0, i32 1
  %20 = bitcast %union.anon.0* %19 to %struct.anon.9*
  %21 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %20, i32 0, i32 1
  %22 = load %struct.AST*, %struct.AST** %21, align 4
  %23 = load %struct.Env*, %struct.Env** %5, align 4
  %24 = call %struct.SObject* @ast_eval(%struct.AST* noundef %22, %struct.Env* noundef %23)
  store %struct.SObject* %24, %struct.SObject** %3, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.AST*, %struct.AST** %4, align 4
  %27 = getelementptr inbounds %struct.AST, %struct.AST* %26, i32 0, i32 1
  %28 = bitcast %union.anon.0* %27 to %struct.anon.9*
  %29 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %28, i32 0, i32 2
  %30 = load %struct.AST*, %struct.AST** %29, align 8
  %31 = icmp ne %struct.AST* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.AST*, %struct.AST** %4, align 4
  %34 = getelementptr inbounds %struct.AST, %struct.AST* %33, i32 0, i32 1
  %35 = bitcast %union.anon.0* %34 to %struct.anon.9*
  %36 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %35, i32 0, i32 2
  %37 = load %struct.AST*, %struct.AST** %36, align 8
  %38 = load %struct.Env*, %struct.Env** %5, align 4
  %39 = call %struct.SObject* @ast_eval(%struct.AST* noundef %37, %struct.Env* noundef %38)
  store %struct.SObject* %39, %struct.SObject** %3, align 4
  br label %45

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 1
  %43 = bitcast %union.anon* %42 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %43, i8 0, i32 8, i1 false)
  %44 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %7)
  store %struct.SObject* %44, %struct.SObject** %3, align 4
  br label %45

45:                                               ; preds = %40, %32, %17
  %46 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %46
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_while_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject*, align 4
  %6 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  store %struct.SObject* null, %struct.SObject** %5, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load %struct.AST*, %struct.AST** %3, align 4
  %9 = getelementptr inbounds %struct.AST, %struct.AST* %8, i32 0, i32 1
  %10 = bitcast %union.anon.0* %9 to %struct.anon.10*
  %11 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %10, i32 0, i32 0
  %12 = load %struct.AST*, %struct.AST** %11, align 8
  %13 = load %struct.Env*, %struct.Env** %4, align 4
  %14 = call %struct.SObject* @ast_eval(%struct.AST* noundef %12, %struct.Env* noundef %13)
  %15 = call zeroext i1 @sobject_istrue(%struct.SObject* noundef %14)
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = load %struct.AST*, %struct.AST** %3, align 4
  %18 = getelementptr inbounds %struct.AST, %struct.AST* %17, i32 0, i32 1
  %19 = bitcast %union.anon.0* %18 to %struct.anon.10*
  %20 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %19, i32 0, i32 1
  %21 = load %struct.AST*, %struct.AST** %20, align 4
  %22 = load %struct.Env*, %struct.Env** %4, align 4
  %23 = call %struct.SObject* @ast_eval(%struct.AST* noundef %21, %struct.Env* noundef %22)
  store %struct.SObject* %23, %struct.SObject** %5, align 4
  br label %7, !llvm.loop !2

24:                                               ; preds = %7
  %25 = load %struct.SObject*, %struct.SObject** %5, align 4
  %26 = icmp eq %struct.SObject* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 1
  %30 = bitcast %union.anon* %29 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 8 %30, i8 0, i32 8, i1 false)
  %31 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %6)
  store %struct.SObject* %31, %struct.SObject** %5, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.SObject*, %struct.SObject** %5, align 4
  ret %struct.SObject* %33
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_block_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  %7 = alloca i32, align 4
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %8 = load %struct.Env*, %struct.Env** %4, align 4
  %9 = call %struct.Env* @env_new(%struct.Env* noundef %8)
  store %struct.Env* %9, %struct.Env** %5, align 4
  store %struct.SObject* null, %struct.SObject** %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.AST*, %struct.AST** %3, align 4
  %13 = getelementptr inbounds %struct.AST, %struct.AST* %12, i32 0, i32 1
  %14 = bitcast %union.anon.0* %13 to %struct.anon.11*
  %15 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %14, i32 0, i32 0
  %16 = load %struct.ASTList*, %struct.ASTList** %15, align 8
  %17 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %11, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %10
  %21 = load %struct.AST*, %struct.AST** %3, align 4
  %22 = getelementptr inbounds %struct.AST, %struct.AST* %21, i32 0, i32 1
  %23 = bitcast %union.anon.0* %22 to %struct.anon.11*
  %24 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %23, i32 0, i32 0
  %25 = load %struct.ASTList*, %struct.ASTList** %24, align 8
  %26 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %25, i32 0, i32 2
  %27 = load %struct.AST**, %struct.AST*** %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.AST*, %struct.AST** %27, i32 %28
  %30 = load %struct.AST*, %struct.AST** %29, align 4
  %31 = load %struct.Env*, %struct.Env** %5, align 4
  %32 = call %struct.SObject* @ast_eval(%struct.AST* noundef %30, %struct.Env* noundef %31)
  store %struct.SObject* %32, %struct.SObject** %6, align 4
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10, !llvm.loop !4

36:                                               ; preds = %10
  %37 = load %struct.Env*, %struct.Env** %5, align 4
  call void @env_free(%struct.Env* noundef %37)
  %38 = load %struct.SObject*, %struct.SObject** %6, align 4
  ret %struct.SObject* %38
}

declare %struct.Env* @env_new(%struct.Env* noundef) #1

declare void @env_free(%struct.Env* noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_function_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject, align 8
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %6 = load %struct.Env*, %struct.Env** %4, align 4
  %7 = getelementptr inbounds %struct.SObject, %struct.SObject* %5, i32 0, i32 0
  store i32 6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.SObject, %struct.SObject* %5, i32 0, i32 1
  %9 = bitcast %union.anon* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load %struct.AST*, %struct.AST** %3, align 4
  %12 = getelementptr inbounds %struct.AST, %struct.AST* %11, i32 0, i32 1
  %13 = bitcast %union.anon.0* %12 to %struct.anon.12*
  %14 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %13, i32 0, i32 0
  %15 = load %struct.TokenList*, %struct.TokenList** %14, align 8
  store %struct.TokenList* %15, %struct.TokenList** %10, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %17 = load %struct.AST*, %struct.AST** %3, align 4
  %18 = getelementptr inbounds %struct.AST, %struct.AST* %17, i32 0, i32 1
  %19 = bitcast %union.anon.0* %18 to %struct.anon.12*
  %20 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %19, i32 0, i32 1
  %21 = load %struct.AST*, %struct.AST** %20, align 4
  store %struct.AST* %21, %struct.AST** %16, align 4
  %22 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %5)
  ret %struct.SObject* %22
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_call_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.Env*, align 4
  %6 = alloca %struct.SObject*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.SObject*, align 4
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %9 = load %struct.Env*, %struct.Env** %4, align 4
  %10 = call %struct.Env* @env_new(%struct.Env* noundef %9)
  store %struct.Env* %10, %struct.Env** %5, align 4
  %11 = load %struct.AST*, %struct.AST** %3, align 4
  %12 = getelementptr inbounds %struct.AST, %struct.AST* %11, i32 0, i32 1
  %13 = bitcast %union.anon.0* %12 to %struct.anon.13*
  %14 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %13, i32 0, i32 0
  %15 = load %struct.AST*, %struct.AST** %14, align 8
  %16 = load %struct.Env*, %struct.Env** %4, align 4
  %17 = call %struct.SObject* @ast_eval(%struct.AST* noundef %15, %struct.Env* noundef %16)
  store %struct.SObject* %17, %struct.SObject** %6, align 4
  %18 = load %struct.SObject*, %struct.SObject** %6, align 4
  %19 = getelementptr inbounds %struct.SObject, %struct.SObject* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 6
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.AST*, %struct.AST** %3, align 4
  %24 = getelementptr inbounds %struct.AST, %struct.AST* %23, i32 0, i32 1
  %25 = bitcast %union.anon.0* %24 to %struct.anon.13*
  %26 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %25, i32 0, i32 2
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %26, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  unreachable

27:                                               ; preds = %2
  %28 = load %struct.SObject*, %struct.SObject** %6, align 4
  %29 = getelementptr inbounds %struct.SObject, %struct.SObject* %28, i32 0, i32 1
  %30 = bitcast %union.anon* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load %struct.TokenList*, %struct.TokenList** %31, align 8
  %33 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.AST*, %struct.AST** %3, align 4
  %36 = getelementptr inbounds %struct.AST, %struct.AST* %35, i32 0, i32 1
  %37 = bitcast %union.anon.0* %36 to %struct.anon.13*
  %38 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %37, i32 0, i32 1
  %39 = load %struct.ASTList*, %struct.ASTList** %38, align 4
  %40 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %34, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %27
  %44 = load %struct.AST*, %struct.AST** %3, align 4
  %45 = getelementptr inbounds %struct.AST, %struct.AST* %44, i32 0, i32 1
  %46 = bitcast %union.anon.0* %45 to %struct.anon.13*
  %47 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %46, i32 0, i32 2
  %48 = load %struct.SObject*, %struct.SObject** %6, align 4
  %49 = getelementptr inbounds %struct.SObject, %struct.SObject* %48, i32 0, i32 1
  %50 = bitcast %union.anon* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  %52 = load %struct.TokenList*, %struct.TokenList** %51, align 8
  %53 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.AST*, %struct.AST** %3, align 4
  %56 = getelementptr inbounds %struct.AST, %struct.AST* %55, i32 0, i32 1
  %57 = bitcast %union.anon.0* %56 to %struct.anon.13*
  %58 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %57, i32 0, i32 1
  %59 = load %struct.ASTList*, %struct.ASTList** %58, align 4
  %60 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %47, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0), i32 noundef %54, i32 noundef %61) #5
  unreachable

62:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %96, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.AST*, %struct.AST** %3, align 4
  %66 = getelementptr inbounds %struct.AST, %struct.AST* %65, i32 0, i32 1
  %67 = bitcast %union.anon.0* %66 to %struct.anon.13*
  %68 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %67, i32 0, i32 1
  %69 = load %struct.ASTList*, %struct.ASTList** %68, align 4
  %70 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %64, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %63
  %74 = load %struct.Env*, %struct.Env** %5, align 4
  %75 = load %struct.SObject*, %struct.SObject** %6, align 4
  %76 = getelementptr inbounds %struct.SObject, %struct.SObject* %75, i32 0, i32 1
  %77 = bitcast %union.anon* %76 to %struct.anon*
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 0
  %79 = load %struct.TokenList*, %struct.TokenList** %78, align 8
  %80 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %79, i32 0, i32 2
  %81 = load %struct.Token*, %struct.Token** %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = getelementptr inbounds %struct.Token, %struct.Token* %81, i32 %82
  %84 = load %struct.AST*, %struct.AST** %3, align 4
  %85 = getelementptr inbounds %struct.AST, %struct.AST* %84, i32 0, i32 1
  %86 = bitcast %union.anon.0* %85 to %struct.anon.13*
  %87 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %86, i32 0, i32 1
  %88 = load %struct.ASTList*, %struct.ASTList** %87, align 4
  %89 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %88, i32 0, i32 2
  %90 = load %struct.AST**, %struct.AST*** %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = getelementptr inbounds %struct.AST*, %struct.AST** %90, i32 %91
  %93 = load %struct.AST*, %struct.AST** %92, align 4
  %94 = load %struct.Env*, %struct.Env** %4, align 4
  %95 = call %struct.SObject* @ast_eval(%struct.AST* noundef %93, %struct.Env* noundef %94)
  call void @env_define(%struct.Env* noundef %74, %struct.Token* noundef byval(%struct.Token) align 4 %83, %struct.SObject* noundef %95)
  br label %96

96:                                               ; preds = %73
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %63, !llvm.loop !5

99:                                               ; preds = %63
  %100 = load %struct.SObject*, %struct.SObject** %6, align 4
  %101 = getelementptr inbounds %struct.SObject, %struct.SObject* %100, i32 0, i32 1
  %102 = bitcast %union.anon* %101 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 1
  %104 = load %struct.AST*, %struct.AST** %103, align 4
  %105 = load %struct.Env*, %struct.Env** %5, align 4
  %106 = call %struct.SObject* @ast_eval(%struct.AST* noundef %104, %struct.Env* noundef %105)
  store %struct.SObject* %106, %struct.SObject** %8, align 4
  %107 = load %struct.Env*, %struct.Env** %5, align 4
  call void @env_free(%struct.Env* noundef %107)
  %108 = load %struct.SObject*, %struct.SObject** %8, align 4
  ret %struct.SObject* %108
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @ast_print_eval(%struct.AST* noundef %0, %struct.Env* noundef %1) #0 {
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject*, align 4
  store %struct.AST* %0, %struct.AST** %3, align 4
  store %struct.Env* %1, %struct.Env** %4, align 4
  %6 = load %struct.AST*, %struct.AST** %3, align 4
  %7 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %8 = bitcast %union.anon.0* %7 to %struct.anon.14*
  %9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 0
  %10 = load %struct.AST*, %struct.AST** %9, align 8
  %11 = load %struct.Env*, %struct.Env** %4, align 4
  %12 = call %struct.SObject* @ast_eval(%struct.AST* noundef %10, %struct.Env* noundef %11)
  store %struct.SObject* %12, %struct.SObject** %5, align 4
  %13 = load %struct.SObject*, %struct.SObject** %5, align 4
  %14 = call i8* @sobject_to_string(%struct.SObject* noundef %13)
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* noundef %14)
  %16 = load %struct.SObject*, %struct.SObject** %5, align 4
  ret %struct.SObject* %16
}

declare i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
