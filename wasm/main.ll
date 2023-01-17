; ModuleID = '../src/main.c'
source_filename = "../src/main.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct._IO_FILE = type opaque
%struct.Env = type opaque
%struct.TokenList = type { i32, i32, %struct.Token* }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }
%struct.ASTList = type { i32, i32, %struct.AST** }
%struct.AST = type { i32, %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.Token, double }
%struct.SObject = type { i32, %union.anon.13 }
%union.anon.13 = type { double }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external constant %struct._IO_FILE*, align 4

; Function Attrs: noinline nounwind optnone
define hidden void @interpret(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.Env*, align 4
  %4 = alloca %struct.TokenList*, align 4
  %5 = alloca %struct.ASTList*, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  %7 = call %struct.Env* @env_new(%struct.Env* noundef null)
  store %struct.Env* %7, %struct.Env** %3, align 4
  %8 = load i8*, i8** %2, align 4
  %9 = call %struct.TokenList* @lex(i8* noundef %8, i32 noundef -1)
  store %struct.TokenList* %9, %struct.TokenList** %4, align 4
  %10 = load %struct.TokenList*, %struct.TokenList** %4, align 4
  %11 = call %struct.ASTList* @parse(%struct.TokenList* noundef %10)
  store %struct.ASTList* %11, %struct.ASTList** %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ASTList*, %struct.ASTList** %5, align 4
  %15 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.ASTList*, %struct.ASTList** %5, align 4
  %20 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %19, i32 0, i32 2
  %21 = load %struct.AST**, %struct.AST*** %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.AST*, %struct.AST** %21, i32 %22
  %24 = load %struct.AST*, %struct.AST** %23, align 4
  %25 = load %struct.Env*, %struct.Env** %3, align 4
  %26 = call %struct.SObject* @ast_eval(%struct.AST* noundef %24, %struct.Env* noundef %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %12, !llvm.loop !2

30:                                               ; preds = %12
  %31 = load %struct.ASTList*, %struct.ASTList** %5, align 4
  call void @astlist_free(%struct.ASTList* noundef %31)
  %32 = load %struct.TokenList*, %struct.TokenList** %4, align 4
  call void @tokenlist_free(%struct.TokenList* noundef %32)
  ret void
}

declare %struct.Env* @env_new(%struct.Env* noundef) #1

declare %struct.TokenList* @lex(i8* noundef, i32 noundef) #1

declare %struct.ASTList* @parse(%struct.TokenList* noundef) #1

declare %struct.SObject* @ast_eval(%struct.AST* noundef, %struct.Env* noundef) #1

declare void @astlist_free(%struct.ASTList* noundef) #1

declare void @tokenlist_free(%struct.TokenList* noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden i32 @__main_argc_argv(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca %struct.Env*, align 4
  %12 = alloca %struct.TokenList*, align 4
  %13 = alloca %struct.ASTList*, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i8**, i8*** %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds i8*, i8** %23, i32 %24
  %26 = load i8*, i8** %25, align 4
  %27 = call %struct._IO_FILE* @fopen(i8* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** %7, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %29 = call i32 @fseek(%struct._IO_FILE* noundef %28, i32 noundef 0, i32 noundef 2)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %31 = call i32 @ftell(%struct._IO_FILE* noundef %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %33 = call i32 @fseek(%struct._IO_FILE* noundef %32, i32 noundef 0, i32 noundef 0)
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = call noalias i8* @malloc(i32 noundef %35)
  store i8* %36, i8** %9, align 4
  %37 = load i8*, i8** %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %40 = call i32 @fread(i8* noundef %37, i32 noundef %38, i32 noundef 1, %struct._IO_FILE* noundef %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 4
  %42 = call i32 @fclose(%struct._IO_FILE* noundef %41)
  %43 = load i8*, i8** %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds i8, i8* %43, i32 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %9, align 4
  call void @interpret(i8* noundef %46)
  %47 = load i8*, i8** %9, align 4
  call void @free(i8* noundef %47)
  br label %48

48:                                               ; preds = %22
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %18, !llvm.loop !4

51:                                               ; preds = %18
  br label %86

52:                                               ; preds = %2
  %53 = call %struct.Env* @env_new(%struct.Env* noundef null)
  store %struct.Env* %53, %struct.Env** %11, align 4
  br label %54

54:                                               ; preds = %82, %52
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 4
  %57 = call i8* @fgets(i8* noundef %55, i32 noundef 4096, %struct._IO_FILE* noundef %56)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %61 = call %struct.TokenList* @lex(i8* noundef %60, i32 noundef -1)
  store %struct.TokenList* %61, %struct.TokenList** %12, align 4
  %62 = load %struct.TokenList*, %struct.TokenList** %12, align 4
  %63 = call %struct.ASTList* @parse(%struct.TokenList* noundef %62)
  store %struct.ASTList* %63, %struct.ASTList** %13, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %79, %59
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.ASTList*, %struct.ASTList** %13, align 4
  %67 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.ASTList*, %struct.ASTList** %13, align 4
  %72 = getelementptr inbounds %struct.ASTList, %struct.ASTList* %71, i32 0, i32 2
  %73 = load %struct.AST**, %struct.AST*** %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = getelementptr inbounds %struct.AST*, %struct.AST** %73, i32 %74
  %76 = load %struct.AST*, %struct.AST** %75, align 4
  %77 = load %struct.Env*, %struct.Env** %11, align 4
  %78 = call %struct.SObject* @ast_eval(%struct.AST* noundef %76, %struct.Env* noundef %77)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %64, !llvm.loop !5

82:                                               ; preds = %64
  %83 = load %struct.ASTList*, %struct.ASTList** %13, align 4
  call void @astlist_free(%struct.ASTList* noundef %83)
  %84 = load %struct.TokenList*, %struct.TokenList** %12, align 4
  call void @tokenlist_free(%struct.TokenList* noundef %84)
  br label %54, !llvm.loop !6

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %51
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare i32 @fseek(%struct._IO_FILE* noundef, i32 noundef, i32 noundef) #1

declare i32 @ftell(%struct._IO_FILE* noundef) #1

declare noalias i8* @malloc(i32 noundef) #1

declare i32 @fread(i8* noundef, i32 noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

declare void @free(i8* noundef) #1

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
