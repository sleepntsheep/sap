; ModuleID = '../src/ast.c'
source_filename = "../src/ast.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct.AST = type { i32, %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.Token, double }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }
%struct.ASTList = type { i32, i32, %struct.AST** }

@__ast_type_str = internal global [14 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"A_OR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"A_AND\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"A_UNARY\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"A_BINARY\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"A_DECLARATION\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"A_ASSIGNMENT\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"A_LITERAL\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"A_VARIABLE\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"A_IF\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"A_WHILE\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"A_BLOCK\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"A_FUNCTION\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"A_CALL\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"A_PRINT\00", align 1

; Function Attrs: noinline nounwind optnone
define hidden %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %0) #0 {
  %2 = alloca %struct.AST*, align 4
  %3 = call noalias i8* @malloc(i32 noundef 40)
  %4 = bitcast i8* %3 to %struct.AST*
  store %struct.AST* %4, %struct.AST** %2, align 4
  %5 = load %struct.AST*, %struct.AST** %2, align 4
  %6 = bitcast %struct.AST* %5 to i8*
  %7 = bitcast %struct.AST* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %6, i8* align 8 %7, i32 40, i1 false)
  %8 = load %struct.AST*, %struct.AST** %2, align 4
  ret %struct.AST* %8
}

declare noalias i8* @malloc(i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden %struct.ASTList* @astlist_new() #0 {
  %1 = alloca %struct.ASTList*, align 4
  %2 = call noalias i8* @malloc(i32 noundef 12)
  %3 = bitcast i8* %2 to %struct.ASTList*
  store %struct.ASTList* %3, %struct.ASTList** %1, align 4
  %4 = load %struct.ASTList*, %struct.ASTList** %1, align 4
  %5 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.ASTList*, %struct.ASTList** %1, align 4
  %7 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %6, i32 0, i32 1
  store i32 4, i32* %7, align 4
  %8 = load %struct.ASTList*, %struct.ASTList** %1, align 4
  %9 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul i32 4, %10
  %12 = call noalias i8* @malloc(i32 noundef %11)
  %13 = bitcast i8* %12 to %struct.AST**
  %14 = load %struct.ASTList*, %struct.ASTList** %1, align 4
  %15 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %14, i32 0, i32 2
  store %struct.AST** %13, %struct.AST*** %15, align 4
  %16 = load %struct.ASTList*, %struct.ASTList** %1, align 4
  ret %struct.ASTList* %16
}

; Function Attrs: noinline nounwind optnone
define hidden void @astlist_push(%struct.ASTList* noundef %0, %struct.AST* noundef %1) #0 {
  %3 = alloca %struct.ASTList*, align 4
  %4 = alloca %struct.AST*, align 4
  store %struct.ASTList* %0, %struct.ASTList** %3, align 4
  store %struct.AST* %1, %struct.AST** %4, align 4
  %5 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %6 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %9 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %14 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul i32 %15, 2
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %18 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %17, i32 0, i32 2
  %19 = load %struct.AST**, %struct.AST*** %18, align 4
  %20 = bitcast %struct.AST** %19 to i8*
  %21 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %22 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %23, 4
  %25 = call i8* @realloc(i8* noundef %20, i32 noundef %24)
  %26 = bitcast i8* %25 to %struct.AST**
  %27 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %28 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %27, i32 0, i32 2
  store %struct.AST** %26, %struct.AST*** %28, align 4
  br label %29

29:                                               ; preds = %12, %2
  %30 = load %struct.AST*, %struct.AST** %4, align 4
  %31 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %32 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %31, i32 0, i32 2
  %33 = load %struct.AST**, %struct.AST*** %32, align 4
  %34 = load %struct.ASTList*, %struct.ASTList** %3, align 4
  %35 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.AST*, %struct.AST** %33, i32 %36
  store %struct.AST* %30, %struct.AST** %38, align 4
  ret void
}

declare i8* @realloc(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden i8* @asttype_str(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds [14 x i8*], [14 x i8*]* @__ast_type_str, i32 0, i32 %3
  %5 = load i8*, i8** %4, align 4
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone
define hidden void @astlist_free(%struct.ASTList* noundef %0) #0 {
  %2 = alloca %struct.ASTList*, align 4
  store %struct.ASTList* %0, %struct.ASTList** %2, align 4
  %3 = load %struct.ASTList*, %struct.ASTList** %2, align 4
  %4 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %3, i32 0, i32 2
  %5 = load %struct.AST**, %struct.AST*** %4, align 4
  %6 = bitcast %struct.AST** %5 to i8*
  call void @free(i8* noundef %6)
  %7 = load %struct.ASTList*, %struct.ASTList** %2, align 4
  %8 = bitcast %struct.ASTList* %7 to i8*
  call void @free(i8* noundef %8)
  ret void
}

declare void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
