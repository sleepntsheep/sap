; ModuleID = '../src/token.c'
source_filename = "../src/token.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct.TokenList = type { i32, i32, %struct.Token* }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }

@__TokenName = internal global [35 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"T_LET\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"T_LPAREN\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"T_RPAREN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"T_LBRACE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"T_RBRACE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"T_IDENTIFIER\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"T_NUMBER\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"T_STRING\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"T_PLUS\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"T_MINUS\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"T_MULTIPLY\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"T_DIVIDE\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"T_MODULO\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"T_EQUAL\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"T_NOTEQUAL\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"T_GREATER\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"T_LESS\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"T_GREATEREQUAL\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"T_LESSEQUAL\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"T_ASSIGN\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"T_AT\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"T_NOT\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"T_POWER\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"T_TRUE\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"T_FALSE\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"T_NIL\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"T_OR\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"T_AND\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"T_IF\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"T_ELSE\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"T_WHILE\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"T_SUBROUTINE\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"T_PRINT\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"T_CONCAT\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"T_EOF\00", align 1

; Function Attrs: noinline nounwind optnone
define hidden i8* @tokentype_str(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds [35 x i8*], [35 x i8*]* @__TokenName, i32 0, i32 %3
  %5 = load i8*, i8** %4, align 4
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone
define hidden %struct.TokenList* @tokenlist_new() #0 {
  %1 = alloca %struct.TokenList*, align 4
  %2 = call noalias i8* @calloc(i32 noundef 1, i32 noundef 12)
  %3 = bitcast i8* %2 to %struct.TokenList*
  store %struct.TokenList* %3, %struct.TokenList** %1, align 4
  %4 = load %struct.TokenList*, %struct.TokenList** %1, align 4
  %5 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.TokenList*, %struct.TokenList** %1, align 4
  %7 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %6, i32 0, i32 1
  store i32 4, i32* %7, align 4
  %8 = load %struct.TokenList*, %struct.TokenList** %1, align 4
  %9 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call noalias i8* @calloc(i32 noundef 24, i32 noundef %10)
  %12 = bitcast i8* %11 to %struct.Token*
  %13 = load %struct.TokenList*, %struct.TokenList** %1, align 4
  %14 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %13, i32 0, i32 2
  store %struct.Token* %12, %struct.Token** %14, align 4
  %15 = load %struct.TokenList*, %struct.TokenList** %1, align 4
  ret %struct.TokenList* %15
}

declare noalias i8* @calloc(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.Token* @tokenlist_at(%struct.TokenList* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.TokenList*, align 4
  %4 = alloca i32, align 4
  store %struct.TokenList* %0, %struct.TokenList** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %6 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %5, i32 0, i32 2
  %7 = load %struct.Token*, %struct.Token** %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.Token, %struct.Token* %7, i32 %8
  ret %struct.Token* %9
}

; Function Attrs: noinline nounwind optnone
define hidden void @tokenlist_push(%struct.TokenList* noundef %0, %struct.Token* noundef byval(%struct.Token) align 4 %1) #0 {
  %3 = alloca %struct.TokenList*, align 4
  store %struct.TokenList* %0, %struct.TokenList** %3, align 4
  %4 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %5 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %8 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %13 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul i32 %14, 2
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %17 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %16, i32 0, i32 2
  %18 = load %struct.Token*, %struct.Token** %17, align 4
  %19 = bitcast %struct.Token* %18 to i8*
  %20 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %21 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul i32 %22, 24
  %24 = call i8* @realloc(i8* noundef %19, i32 noundef %23)
  %25 = bitcast i8* %24 to %struct.Token*
  %26 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %27 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %26, i32 0, i32 2
  store %struct.Token* %25, %struct.Token** %27, align 4
  br label %28

28:                                               ; preds = %11, %2
  %29 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %30 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %29, i32 0, i32 2
  %31 = load %struct.Token*, %struct.Token** %30, align 4
  %32 = load %struct.TokenList*, %struct.TokenList** %3, align 4
  %33 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.Token, %struct.Token* %31, i32 %34
  %37 = bitcast %struct.Token* %36 to i8*
  %38 = bitcast %struct.Token* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %37, i8* align 4 %38, i32 24, i1 false)
  ret void
}

declare i8* @realloc(i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden void @tokenlist_free(%struct.TokenList* noundef %0) #0 {
  %2 = alloca %struct.TokenList*, align 4
  store %struct.TokenList* %0, %struct.TokenList** %2, align 4
  %3 = load %struct.TokenList*, %struct.TokenList** %2, align 4
  %4 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %3, i32 0, i32 2
  %5 = load %struct.Token*, %struct.Token** %4, align 4
  %6 = bitcast %struct.Token* %5 to i8*
  call void @free(i8* noundef %6)
  %7 = load %struct.TokenList*, %struct.TokenList** %2, align 4
  %8 = bitcast %struct.TokenList* %7 to i8*
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
