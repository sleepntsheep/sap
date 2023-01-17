; ModuleID = '../src/parser.c'
source_filename = "../src/parser.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct.ASTList = type { i32, i32, %struct.AST** }
%struct.AST = type { i32, %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.Token, double }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }
%struct.TokenList = type { i32, i32, %struct.Token* }
%struct.Parser = type { i32, %struct.TokenList* }
%struct.anon.12 = type { %struct.AST* }
%struct.anon.7 = type { %struct.AST*, %struct.AST*, %struct.AST* }
%struct.anon.8 = type { %struct.AST*, %struct.AST* }
%struct.anon.10 = type { %struct.TokenList*, %struct.AST* }
%struct.anon.9 = type { %struct.ASTList* }
%struct.anon.4 = type { %struct.Token, %struct.AST* }
%struct.anon = type { %struct.AST*, %struct.AST* }
%struct.anon.2 = type { %struct.AST*, %struct.Token, %struct.AST* }
%struct.anon.3 = type { %struct.Token, %struct.AST* }
%struct.anon.11 = type { %struct.AST*, %struct.ASTList*, %struct.Token }
%struct.anon.6 = type { %struct.Token }

@.str = private unnamed_addr constant [11 x i8] c"ParseError\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"expected token type %s but got %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown primary token: %s\00", align 1

; Function Attrs: noinline nounwind optnone
define hidden %struct.ASTList* @parse(%struct.TokenList* noundef %0) #0 {
  %2 = alloca %struct.TokenList*, align 4
  %3 = alloca %struct.Parser, align 4
  %4 = alloca %struct.ASTList*, align 4
  store %struct.TokenList* %0, %struct.TokenList** %2, align 4
  %5 = getelementptr inbounds %struct.Parser, %struct.Parser* %3, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.Parser, %struct.Parser* %3, i32 0, i32 1
  %7 = load %struct.TokenList*, %struct.TokenList** %2, align 4
  store %struct.TokenList* %7, %struct.TokenList** %6, align 4
  %8 = call %struct.ASTList* bitcast (%struct.ASTList* (...)* @astlist_new to %struct.ASTList* ()*)()
  store %struct.ASTList* %8, %struct.ASTList** %4, align 4
  br label %9

9:                                                ; preds = %13, %1
  %10 = call i32 @end(%struct.Parser* noundef %3)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.ASTList*, %struct.ASTList** %4, align 4
  %15 = call %struct.AST* @expression(%struct.Parser* noundef %3)
  call void @astlist_push(%struct.ASTList* noundef %14, %struct.AST* noundef %15)
  br label %9, !llvm.loop !2

16:                                               ; preds = %9
  %17 = load %struct.ASTList*, %struct.ASTList** %4, align 4
  ret %struct.ASTList* %17
}

declare %struct.ASTList* @astlist_new(...) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @end(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.Token, align 4
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %4 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %3, %struct.Parser* noundef %4, i32 noundef 0)
  %5 = getelementptr inbounds %struct.Token, %struct.Token* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.Parser*, %struct.Parser** %2, align 4
  %10 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.Parser*, %struct.Parser** %2, align 4
  %13 = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 1
  %14 = load %struct.TokenList*, %struct.TokenList** %13, align 4
  %15 = getelementptr inbounds %struct.TokenList, %struct.TokenList* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp uge i32 %11, %16
  br label %18

18:                                               ; preds = %8, %1
  %19 = phi i1 [ true, %1 ], [ %17, %8 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare void @astlist_push(%struct.ASTList* noundef, %struct.AST* noundef) #2

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @expression(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.AST*, align 4
  %3 = alloca %struct.Parser*, align 4
  %4 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %3, align 4
  %5 = load %struct.Parser*, %struct.Parser** %3, align 4
  %6 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %5, i32 noundef 1, i32 noundef 28)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.Parser*, %struct.Parser** %3, align 4
  %10 = call %struct.AST* @if_else(%struct.Parser* noundef %9)
  store %struct.AST* %10, %struct.AST** %2, align 4
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.Parser*, %struct.Parser** %3, align 4
  %13 = call i32 (%struct.Parser*, i32, ...) @match(%struct.Parser* noundef %12, i32 noundef 1, i32 noundef 32)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = bitcast %struct.AST* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %4, i32 0, i32 0
  store i32 13, i32* %17, align 8
  %18 = getelementptr inbounds %struct.AST, %struct.AST* %4, i32 0, i32 1
  %19 = bitcast %union.anon* %18 to %struct.anon.12*
  %20 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %19, i32 0, i32 0
  %21 = load %struct.Parser*, %struct.Parser** %3, align 4
  %22 = call %struct.AST* @expression(%struct.Parser* noundef %21)
  store %struct.AST* %22, %struct.AST** %20, align 8
  %23 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %4)
  store %struct.AST* %23, %struct.AST** %2, align 4
  br label %48

24:                                               ; preds = %11
  %25 = load %struct.Parser*, %struct.Parser** %3, align 4
  %26 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %25, i32 noundef 1, i32 noundef 30)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.Parser*, %struct.Parser** %3, align 4
  %30 = call %struct.AST* @while_loop(%struct.Parser* noundef %29)
  store %struct.AST* %30, %struct.AST** %2, align 4
  br label %48

31:                                               ; preds = %24
  %32 = load %struct.Parser*, %struct.Parser** %3, align 4
  %33 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %32, i32 noundef 1, i32 noundef 31)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.Parser*, %struct.Parser** %3, align 4
  %37 = call %struct.AST* @function(%struct.Parser* noundef %36)
  store %struct.AST* %37, %struct.AST** %2, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.Parser*, %struct.Parser** %3, align 4
  %40 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %39, i32 noundef 1, i32 noundef 3)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.Parser*, %struct.Parser** %3, align 4
  %44 = call %struct.AST* @block(%struct.Parser* noundef %43)
  store %struct.AST* %44, %struct.AST** %2, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.Parser*, %struct.Parser** %3, align 4
  %47 = call %struct.AST* @declaration(%struct.Parser* noundef %46)
  store %struct.AST* %47, %struct.AST** %2, align 4
  br label %48

48:                                               ; preds = %45, %42, %35, %28, %15, %8
  %49 = load %struct.AST*, %struct.AST** %2, align 4
  ret %struct.AST* %49
}

; Function Attrs: noinline nounwind optnone
define internal void @peekn(%struct.Token* noalias sret(%struct.Token) align 4 %0, %struct.Parser* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.Parser*, align 4
  %5 = alloca i32, align 4
  store %struct.Parser* %1, %struct.Parser** %4, align 4
  store i32 %2, i32* %5, align 4
  %6 = load %struct.Parser*, %struct.Parser** %4, align 4
  %7 = getelementptr inbounds %struct.Parser, %struct.Parser* %6, i32 0, i32 1
  %8 = load %struct.TokenList*, %struct.TokenList** %7, align 4
  %9 = load %struct.Parser*, %struct.Parser** %4, align 4
  %10 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add i32 %11, %12
  %14 = call %struct.Token* @tokenlist_at(%struct.TokenList* noundef %8, i32 noundef %13)
  %15 = bitcast %struct.Token* %0 to i8*
  %16 = bitcast %struct.Token* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %15, i8* align 4 %16, i32 24, i1 false)
  ret void
}

declare %struct.Token* @tokenlist_at(%struct.TokenList* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @check(%struct.Parser* noundef %0, i32 noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Parser*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Token, align 4
  store %struct.Parser* %0, %struct.Parser** %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = bitcast i8** %6 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.Parser*, %struct.Parser** %4, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %8, %struct.Parser* noundef %15, i32 noundef 0)
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 4
  %19 = getelementptr inbounds i8, i8* %18, i32 4
  store i8* %19, i8** %6, align 4
  %20 = bitcast i8* %18 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %30

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %10, !llvm.loop !4

28:                                               ; preds = %10
  %29 = bitcast i8** %6 to i8*
  call void @llvm.va_end(i8* %29)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @if_else(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.Token, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST*, align 4
  %7 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %8 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %3, %struct.Parser* noundef %8, i32 noundef 28)
  %9 = load %struct.Parser*, %struct.Parser** %2, align 4
  %10 = call %struct.AST* @expression(%struct.Parser* noundef %9)
  store %struct.AST* %10, %struct.AST** %4, align 4
  %11 = load %struct.Parser*, %struct.Parser** %2, align 4
  %12 = call %struct.AST* @expression(%struct.Parser* noundef %11)
  store %struct.AST* %12, %struct.AST** %5, align 4
  store %struct.AST* null, %struct.AST** %6, align 4
  %13 = load %struct.Parser*, %struct.Parser** %2, align 4
  %14 = call i32 (%struct.Parser*, i32, ...) @match(%struct.Parser* noundef %13, i32 noundef 1, i32 noundef 29)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.Parser*, %struct.Parser** %2, align 4
  %18 = call %struct.AST* @expression(%struct.Parser* noundef %17)
  store %struct.AST* %18, %struct.AST** %6, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 0
  store i32 8, i32* %20, align 8
  %21 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 1
  %22 = bitcast %union.anon* %21 to %struct.anon.7*
  %23 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %22, i32 0, i32 0
  %24 = load %struct.AST*, %struct.AST** %4, align 4
  store %struct.AST* %24, %struct.AST** %23, align 8
  %25 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %22, i32 0, i32 1
  %26 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %26, %struct.AST** %25, align 4
  %27 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %22, i32 0, i32 2
  %28 = load %struct.AST*, %struct.AST** %6, align 4
  store %struct.AST* %28, %struct.AST** %27, align 8
  %29 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %7)
  ret %struct.AST* %29
}

; Function Attrs: noinline nounwind optnone
define internal i32 @match(%struct.Parser* noundef %0, i32 noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Parser*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Token, align 4
  %9 = alloca %struct.Token, align 4
  store %struct.Parser* %0, %struct.Parser** %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = bitcast i8** %6 to i8*
  call void @llvm.va_start(i8* %10)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.Parser*, %struct.Parser** %4, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %8, %struct.Parser* noundef %16, i32 noundef 0)
  %17 = getelementptr inbounds %struct.Token, %struct.Token* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 4
  %20 = getelementptr inbounds i8, i8* %19, i32 4
  store i8* %20, i8** %6, align 4
  %21 = bitcast i8* %19 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load %struct.Parser*, %struct.Parser** %4, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %9, %struct.Parser* noundef %25)
  store i32 1, i32* %3, align 4
  br label %32

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %11, !llvm.loop !5

30:                                               ; preds = %11
  %31 = bitcast i8** %6 to i8*
  call void @llvm.va_end(i8* %31)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @while_loop(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.Token, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %3, %struct.Parser* noundef %7, i32 noundef 30)
  %8 = load %struct.Parser*, %struct.Parser** %2, align 4
  %9 = call %struct.AST* @expression(%struct.Parser* noundef %8)
  store %struct.AST* %9, %struct.AST** %4, align 4
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  %11 = call %struct.AST* @expression(%struct.Parser* noundef %10)
  store %struct.AST* %11, %struct.AST** %5, align 4
  %12 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 9, i32* %12, align 8
  %13 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %14 = bitcast %union.anon* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = bitcast %union.anon* %13 to %struct.anon.8*
  %16 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %15, i32 0, i32 0
  %17 = load %struct.AST*, %struct.AST** %4, align 4
  store %struct.AST* %17, %struct.AST** %16, align 8
  %18 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %15, i32 0, i32 1
  %19 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %19, %struct.AST** %18, align 4
  %20 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  ret %struct.AST* %20
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @function(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.Token, align 4
  %4 = alloca %struct.TokenList*, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.Token, align 4
  %7 = alloca %struct.Token, align 4
  %8 = alloca %struct.AST*, align 4
  %9 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %3, %struct.Parser* noundef %10, i32 noundef 31)
  %11 = call %struct.TokenList* @tokenlist_new()
  store %struct.TokenList* %11, %struct.TokenList** %4, align 4
  %12 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %12, i32 noundef 1)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  %15 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %14, i32 noundef 1, i32 noundef 2)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TokenList*, %struct.TokenList** %4, align 4
  %20 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %6, %struct.Parser* noundef %20, i32 noundef 5)
  call void @tokenlist_push(%struct.TokenList* noundef %19, %struct.Token* noundef byval(%struct.Token) align 4 %6)
  br label %13, !llvm.loop !6

21:                                               ; preds = %13
  %22 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %7, %struct.Parser* noundef %22, i32 noundef 2)
  %23 = load %struct.Parser*, %struct.Parser** %2, align 4
  %24 = call %struct.AST* @expression(%struct.Parser* noundef %23)
  store %struct.AST* %24, %struct.AST** %8, align 4
  %25 = getelementptr inbounds %struct.AST, %struct.AST* %9, i32 0, i32 0
  store i32 11, i32* %25, align 8
  %26 = getelementptr inbounds %struct.AST, %struct.AST* %9, i32 0, i32 1
  %27 = bitcast %union.anon* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 32, i1 false)
  %28 = bitcast %union.anon* %26 to %struct.anon.10*
  %29 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %28, i32 0, i32 0
  %30 = load %struct.TokenList*, %struct.TokenList** %4, align 4
  store %struct.TokenList* %30, %struct.TokenList** %29, align 8
  %31 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %28, i32 0, i32 1
  %32 = load %struct.AST*, %struct.AST** %8, align 4
  store %struct.AST* %32, %struct.AST** %31, align 4
  %33 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %9)
  ret %struct.AST* %33
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @block(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.Token, align 4
  %4 = alloca %struct.ASTList*, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %3, %struct.Parser* noundef %7, i32 noundef 3)
  %8 = call %struct.ASTList* bitcast (%struct.ASTList* (...)* @astlist_new to %struct.ASTList* ()*)()
  store %struct.ASTList* %8, %struct.ASTList** %4, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  %11 = call i32 @end(%struct.Parser* noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  %15 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %14, i32 noundef 1, i32 noundef 4)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = load %struct.ASTList*, %struct.ASTList** %4, align 4
  %22 = load %struct.Parser*, %struct.Parser** %2, align 4
  %23 = call %struct.AST* @expression(%struct.Parser* noundef %22)
  call void @astlist_push(%struct.ASTList* noundef %21, %struct.AST* noundef %23)
  br label %9, !llvm.loop !7

24:                                               ; preds = %18
  %25 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %25, i32 noundef 4)
  %26 = bitcast %struct.AST* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 40, i1 false)
  %27 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 10, i32* %27, align 8
  %28 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %29 = bitcast %union.anon* %28 to %struct.anon.9*
  %30 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %29, i32 0, i32 0
  %31 = load %struct.ASTList*, %struct.ASTList** %4, align 4
  store %struct.ASTList* %31, %struct.ASTList** %30, align 8
  %32 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  ret %struct.AST* %32
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @declaration(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.AST*, align 4
  %3 = alloca %struct.Parser*, align 4
  %4 = alloca %struct.AST*, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.Token, align 4
  %7 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %3, align 4
  %8 = load %struct.Parser*, %struct.Parser** %3, align 4
  %9 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %8, i32 noundef 1, i32 noundef 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  store %struct.AST* null, %struct.AST** %4, align 4
  %12 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %12)
  %13 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %6, %struct.Parser* noundef %13)
  %14 = load %struct.Parser*, %struct.Parser** %3, align 4
  %15 = call i32 (%struct.Parser*, i32, ...) @match(%struct.Parser* noundef %14, i32 noundef 1, i32 noundef 19)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.Parser*, %struct.Parser** %3, align 4
  %19 = call %struct.AST* @expression(%struct.Parser* noundef %18)
  store %struct.AST* %19, %struct.AST** %4, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = getelementptr inbounds %struct.AST, %struct.AST* %7, i32 0, i32 1
  %23 = bitcast %union.anon* %22 to %struct.anon.4*
  %24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %23, i32 0, i32 0
  %25 = bitcast %struct.Token* %24 to i8*
  %26 = bitcast %struct.Token* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %25, i8* align 4 %26, i32 24, i1 false)
  %27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %23, i32 0, i32 1
  %28 = load %struct.AST*, %struct.AST** %4, align 4
  store %struct.AST* %28, %struct.AST** %27, align 8
  %29 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %7)
  store %struct.AST* %29, %struct.AST** %2, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.Parser*, %struct.Parser** %3, align 4
  %32 = call %struct.AST* @assignment(%struct.Parser* noundef %31)
  store %struct.AST* %32, %struct.AST** %2, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.AST*, %struct.AST** %2, align 4
  ret %struct.AST* %34
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind optnone
define internal void @consume(%struct.Token* noalias sret(%struct.Token) align 4 %0, %struct.Parser* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.Parser*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Token, align 4
  %7 = alloca %struct.Token, align 4
  %8 = alloca %struct.Token, align 4
  store %struct.Parser* %1, %struct.Parser** %4, align 4
  store i32 %2, i32* %5, align 4
  %9 = load %struct.Parser*, %struct.Parser** %4, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %6, %struct.Parser* noundef %9, i32 noundef 0)
  %10 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.Parser*, %struct.Parser** %4, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %7, %struct.Parser* noundef %15, i32 noundef 0)
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @tokentype_str(i32 noundef %16)
  %18 = load %struct.Parser*, %struct.Parser** %4, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %8, %struct.Parser* noundef %18, i32 noundef 0)
  %19 = getelementptr inbounds %struct.Token, %struct.Token* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @tokentype_str(i32 noundef %20)
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %7, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* noundef %17, i8* noundef %21) #7
  unreachable

22:                                               ; preds = %3
  %23 = load %struct.Parser*, %struct.Parser** %4, align 4
  %24 = getelementptr inbounds %struct.Parser, %struct.Parser* %23, i32 0, i32 1
  %25 = load %struct.TokenList*, %struct.TokenList** %24, align 4
  %26 = load %struct.Parser*, %struct.Parser** %4, align 4
  %27 = getelementptr inbounds %struct.Parser, %struct.Parser* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = call %struct.Token* @tokenlist_at(%struct.TokenList* noundef %25, i32 noundef %28)
  %31 = bitcast %struct.Token* %0 to i8*
  %32 = bitcast %struct.Token* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %31, i8* align 4 %32, i32 24, i1 false)
  ret void
}

; Function Attrs: noreturn
declare void @generic_error(i8* noundef, %struct.Token* noundef byval(%struct.Token) align 4, i8* noundef, ...) #6

declare i8* @tokentype_str(i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define internal void @advance(%struct.Token* noalias sret(%struct.Token) align 4 %0, %struct.Parser* noundef %1) #0 {
  %3 = alloca %struct.Parser*, align 4
  store %struct.Parser* %1, %struct.Parser** %3, align 4
  %4 = load %struct.Parser*, %struct.Parser** %3, align 4
  %5 = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 1
  %6 = load %struct.TokenList*, %struct.TokenList** %5, align 4
  %7 = load %struct.Parser*, %struct.Parser** %3, align 4
  %8 = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = call %struct.Token* @tokenlist_at(%struct.TokenList* noundef %6, i32 noundef %9)
  %12 = bitcast %struct.Token* %0 to i8*
  %13 = bitcast %struct.Token* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %12, i8* align 4 %13, i32 24, i1 false)
  ret void
}

declare %struct.TokenList* @tokenlist_new() #2

declare void @tokenlist_push(%struct.TokenList* noundef, %struct.Token* noundef byval(%struct.Token) align 4) #2

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @assignment(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.AST*, align 4
  %3 = alloca %struct.Parser*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.Token, align 4
  %7 = alloca %struct.Token, align 4
  %8 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %3, align 4
  %9 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %9, i32 noundef 0)
  %10 = getelementptr inbounds %struct.Token, %struct.Token* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %14, i32 noundef 1)
  %15 = getelementptr inbounds %struct.Token, %struct.Token* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 19
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %6, %struct.Parser* noundef %19)
  %20 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %7, %struct.Parser* noundef %20)
  %21 = getelementptr inbounds %struct.AST, %struct.AST* %8, i32 0, i32 0
  store i32 5, i32* %21, align 8
  %22 = getelementptr inbounds %struct.AST, %struct.AST* %8, i32 0, i32 1
  %23 = bitcast %union.anon* %22 to %struct.anon.4*
  %24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %23, i32 0, i32 0
  %25 = bitcast %struct.Token* %24 to i8*
  %26 = bitcast %struct.Token* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %25, i8* align 4 %26, i32 24, i1 false)
  %27 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %23, i32 0, i32 1
  %28 = load %struct.Parser*, %struct.Parser** %3, align 4
  %29 = call %struct.AST* @expression(%struct.Parser* noundef %28)
  store %struct.AST* %29, %struct.AST** %27, align 8
  %30 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %8)
  store %struct.AST* %30, %struct.AST** %2, align 4
  br label %34

31:                                               ; preds = %13, %1
  %32 = load %struct.Parser*, %struct.Parser** %3, align 4
  %33 = call %struct.AST* @logic_or(%struct.Parser* noundef %32)
  store %struct.AST* %33, %struct.AST** %2, align 4
  br label %34

34:                                               ; preds = %31, %18
  %35 = load %struct.AST*, %struct.AST** %2, align 4
  ret %struct.AST* %35
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @logic_or(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @logic_and(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %10, i32 noundef 0)
  %11 = getelementptr inbounds %struct.Token, %struct.Token* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 26
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %15)
  %16 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %18 = bitcast %union.anon* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = bitcast %union.anon* %17 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %21, %struct.AST** %20, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %23 = load %struct.Parser*, %struct.Parser** %2, align 4
  %24 = call %struct.AST* @logic_and(%struct.Parser* noundef %23)
  store %struct.AST* %24, %struct.AST** %22, align 4
  %25 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %25, %struct.AST** %3, align 4
  br label %9, !llvm.loop !8

26:                                               ; preds = %9
  %27 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %27
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @logic_and(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @equality(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %10, i32 noundef 0)
  %11 = getelementptr inbounds %struct.Token, %struct.Token* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 27
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %15)
  %16 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %18 = bitcast %union.anon* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = bitcast %union.anon* %17 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %21, %struct.AST** %20, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %23 = load %struct.Parser*, %struct.Parser** %2, align 4
  %24 = call %struct.AST* @equality(%struct.Parser* noundef %23)
  store %struct.AST* %24, %struct.AST** %22, align 4
  %25 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %25, %struct.AST** %3, align 4
  br label %9, !llvm.loop !9

26:                                               ; preds = %9
  %27 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %27
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @equality(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @comparsion(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  %9 = load %struct.Parser*, %struct.Parser** %2, align 4
  %10 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %9, i32 noundef 2, i32 noundef 14, i32 noundef 13)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %13)
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  %15 = call %struct.AST* @comparsion(%struct.Parser* noundef %14)
  store %struct.AST* %15, %struct.AST** %5, align 4
  %16 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 0
  %20 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %20, %struct.AST** %19, align 8
  %21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %22 = bitcast %struct.Token* %21 to i8*
  %23 = bitcast %struct.Token* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %22, i8* align 4 %23, i32 24, i1 false)
  %24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 2
  %25 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %25, %struct.AST** %24, align 4
  %26 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %26, %struct.AST** %3, align 4
  br label %27

27:                                               ; preds = %12, %1
  %28 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %28
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @comparsion(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @term(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  %9 = load %struct.Parser*, %struct.Parser** %2, align 4
  %10 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %9, i32 noundef 4, i32 noundef 16, i32 noundef 18, i32 noundef 15, i32 noundef 17)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %13)
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  %15 = call %struct.AST* @term(%struct.Parser* noundef %14)
  store %struct.AST* %15, %struct.AST** %5, align 4
  %16 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 0
  %20 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %20, %struct.AST** %19, align 8
  %21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %22 = bitcast %struct.Token* %21 to i8*
  %23 = bitcast %struct.Token* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %22, i8* align 4 %23, i32 24, i1 false)
  %24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 2
  %25 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %25, %struct.AST** %24, align 4
  %26 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %26, %struct.AST** %3, align 4
  br label %27

27:                                               ; preds = %12, %1
  %28 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %28
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @term(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @factor(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  br label %9

9:                                                ; preds = %13, %1
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  %11 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %10, i32 noundef 3, i32 noundef 8, i32 noundef 9, i32 noundef 33)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %14)
  %15 = load %struct.Parser*, %struct.Parser** %2, align 4
  %16 = call %struct.AST* @factor(%struct.Parser* noundef %15)
  store %struct.AST* %16, %struct.AST** %5, align 4
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 3, i32* %17, align 8
  %18 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %19 = bitcast %union.anon* %18 to %struct.anon.2*
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 0
  %21 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %21, %struct.AST** %20, align 8
  %22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 1
  %23 = bitcast %struct.Token* %22 to i8*
  %24 = bitcast %struct.Token* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %23, i8* align 4 %24, i32 24, i1 false)
  %25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 2
  %26 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %26, %struct.AST** %25, align 4
  %27 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %27, %struct.AST** %3, align 4
  br label %9, !llvm.loop !10

28:                                               ; preds = %9
  %29 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %29
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @factor(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @exponent(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  br label %9

9:                                                ; preds = %13, %1
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  %11 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %10, i32 noundef 3, i32 noundef 10, i32 noundef 11, i32 noundef 12)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %14)
  %15 = load %struct.Parser*, %struct.Parser** %2, align 4
  %16 = call %struct.AST* @exponent(%struct.Parser* noundef %15)
  store %struct.AST* %16, %struct.AST** %5, align 4
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 3, i32* %17, align 8
  %18 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %19 = bitcast %union.anon* %18 to %struct.anon.2*
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 0
  %21 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %21, %struct.AST** %20, align 8
  %22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 1
  %23 = bitcast %struct.Token* %22 to i8*
  %24 = bitcast %struct.Token* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %23, i8* align 4 %24, i32 24, i1 false)
  %25 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 2
  %26 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %26, %struct.AST** %25, align 4
  %27 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %27, %struct.AST** %3, align 4
  br label %9, !llvm.loop !11

28:                                               ; preds = %9
  %29 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %29
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @exponent(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.AST*, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @unary(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  %9 = load %struct.Parser*, %struct.Parser** %2, align 4
  %10 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %9, i32 noundef 1, i32 noundef 22)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %13)
  %14 = load %struct.Parser*, %struct.Parser** %2, align 4
  %15 = call %struct.AST* @exponent(%struct.Parser* noundef %14)
  store %struct.AST* %15, %struct.AST** %5, align 4
  %16 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %19 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 0
  %20 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %20, %struct.AST** %19, align 8
  %21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %22 = bitcast %struct.Token* %21 to i8*
  %23 = bitcast %struct.Token* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %22, i8* align 4 %23, i32 24, i1 false)
  %24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 2
  %25 = load %struct.AST*, %struct.AST** %5, align 4
  store %struct.AST* %25, %struct.AST** %24, align 4
  %26 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %26, %struct.AST** %3, align 4
  br label %27

27:                                               ; preds = %12, %1
  %28 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %28
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @unary(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.Token, align 4
  %5 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  store %struct.AST* null, %struct.AST** %3, align 4
  %6 = load %struct.Parser*, %struct.Parser** %2, align 4
  %7 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %6, i32 noundef 3, i32 noundef 21, i32 noundef 9, i32 noundef 8)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %4, %struct.Parser* noundef %10)
  %11 = getelementptr inbounds %struct.AST, %struct.AST* %5, i32 0, i32 0
  store i32 3, i32* %11, align 8
  %12 = getelementptr inbounds %struct.AST, %struct.AST* %5, i32 0, i32 1
  %13 = bitcast %union.anon* %12 to %struct.anon.3*
  %14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 0
  %15 = bitcast %struct.Token* %14 to i8*
  %16 = bitcast %struct.Token* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %15, i8* align 4 %16, i32 24, i1 false)
  %17 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 1
  %18 = load %struct.Parser*, %struct.Parser** %2, align 4
  %19 = call %struct.AST* @unary(%struct.Parser* noundef %18)
  store %struct.AST* %19, %struct.AST** %17, align 8
  %20 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %5)
  store %struct.AST* %20, %struct.AST** %3, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.Parser*, %struct.Parser** %2, align 4
  %23 = call %struct.AST* @call(%struct.Parser* noundef %22)
  store %struct.AST* %23, %struct.AST** %3, align 4
  br label %24

24:                                               ; preds = %21, %9
  %25 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %25
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @call(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.Parser*, align 4
  %3 = alloca %struct.AST*, align 4
  %4 = alloca %struct.ASTList*, align 4
  %5 = alloca %struct.Token, align 4
  %6 = alloca %struct.AST, align 8
  store %struct.Parser* %0, %struct.Parser** %2, align 4
  %7 = load %struct.Parser*, %struct.Parser** %2, align 4
  %8 = call %struct.AST* @primary(%struct.Parser* noundef %7)
  store %struct.AST* %8, %struct.AST** %3, align 4
  %9 = load %struct.Parser*, %struct.Parser** %2, align 4
  %10 = call i32 (%struct.Parser*, i32, ...) @match(%struct.Parser* noundef %9, i32 noundef 1, i32 noundef 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = call %struct.ASTList* bitcast (%struct.ASTList* (...)* @astlist_new to %struct.ASTList* ()*)()
  store %struct.ASTList* %13, %struct.ASTList** %4, align 4
  br label %14

14:                                               ; preds = %25, %12
  %15 = load %struct.Parser*, %struct.Parser** %2, align 4
  %16 = call i32 @end(%struct.Parser* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.Parser*, %struct.Parser** %2, align 4
  %20 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %19, i32 noundef 1, i32 noundef 2)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load %struct.ASTList*, %struct.ASTList** %4, align 4
  %27 = load %struct.Parser*, %struct.Parser** %2, align 4
  %28 = call %struct.AST* @expression(%struct.Parser* noundef %27)
  call void @astlist_push(%struct.ASTList* noundef %26, %struct.AST* noundef %28)
  br label %14, !llvm.loop !12

29:                                               ; preds = %23
  %30 = load %struct.Parser*, %struct.Parser** %2, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %5, %struct.Parser* noundef %30)
  %31 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 0
  store i32 12, i32* %31, align 8
  %32 = getelementptr inbounds %struct.AST, %struct.AST* %6, i32 0, i32 1
  %33 = bitcast %union.anon* %32 to %struct.anon.11*
  %34 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %33, i32 0, i32 0
  %35 = load %struct.AST*, %struct.AST** %3, align 4
  store %struct.AST* %35, %struct.AST** %34, align 8
  %36 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %33, i32 0, i32 1
  %37 = load %struct.ASTList*, %struct.ASTList** %4, align 4
  store %struct.ASTList* %37, %struct.ASTList** %36, align 4
  %38 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %33, i32 0, i32 2
  %39 = bitcast %struct.Token* %38 to i8*
  %40 = bitcast %struct.Token* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %39, i8* align 4 %40, i32 24, i1 false)
  %41 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %6)
  store %struct.AST* %41, %struct.AST** %3, align 4
  br label %42

42:                                               ; preds = %29, %1
  %43 = load %struct.AST*, %struct.AST** %3, align 4
  ret %struct.AST* %43
}

; Function Attrs: noinline nounwind optnone
define internal %struct.AST* @primary(%struct.Parser* noundef %0) #0 {
  %2 = alloca %struct.AST*, align 4
  %3 = alloca %struct.Parser*, align 4
  %4 = alloca %struct.AST, align 8
  %5 = alloca %struct.AST, align 8
  %6 = alloca %struct.AST*, align 4
  %7 = alloca %struct.Token, align 4
  %8 = alloca %struct.Token, align 4
  %9 = alloca %struct.Token, align 4
  store %struct.Parser* %0, %struct.Parser** %3, align 4
  %10 = load %struct.Parser*, %struct.Parser** %3, align 4
  %11 = call i32 @end(%struct.Parser* noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.AST* null, %struct.AST** %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.Parser*, %struct.Parser** %3, align 4
  %16 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %15, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 24, i32 noundef 23, i32 noundef 25)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.AST, %struct.AST* %4, i32 0, i32 0
  store i32 6, i32* %19, align 8
  %20 = getelementptr inbounds %struct.AST, %struct.AST* %4, i32 0, i32 1
  %21 = bitcast %union.anon* %20 to %struct.anon.1*
  %22 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %21, i32 0, i32 0
  %23 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %22, %struct.Parser* noundef %23)
  %24 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %21, i32 0, i32 1
  store double 0.000000e+00, double* %24, align 8
  %25 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %4)
  store %struct.AST* %25, %struct.AST** %2, align 4
  br label %52

26:                                               ; preds = %14
  %27 = load %struct.Parser*, %struct.Parser** %3, align 4
  %28 = call i32 (%struct.Parser*, i32, ...) @check(%struct.Parser* noundef %27, i32 noundef 1, i32 noundef 5)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.AST, %struct.AST* %5, i32 0, i32 0
  store i32 7, i32* %31, align 8
  %32 = getelementptr inbounds %struct.AST, %struct.AST* %5, i32 0, i32 1
  %33 = bitcast %union.anon* %32 to %struct.anon.6*
  %34 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %33, i32 0, i32 0
  %35 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @advance(%struct.Token* sret(%struct.Token) align 4 %34, %struct.Parser* noundef %35)
  %36 = call %struct.AST* @ast_new(%struct.AST* noundef byval(%struct.AST) align 8 %5)
  store %struct.AST* %36, %struct.AST** %2, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.Parser*, %struct.Parser** %3, align 4
  %39 = call i32 (%struct.Parser*, i32, ...) @match(%struct.Parser* noundef %38, i32 noundef 1, i32 noundef 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.Parser*, %struct.Parser** %3, align 4
  %43 = call %struct.AST* @expression(%struct.Parser* noundef %42)
  store %struct.AST* %43, %struct.AST** %6, align 4
  %44 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @consume(%struct.Token* sret(%struct.Token) align 4 %7, %struct.Parser* noundef %44, i32 noundef 2)
  %45 = load %struct.AST*, %struct.AST** %6, align 4
  store %struct.AST* %45, %struct.AST** %2, align 4
  br label %52

46:                                               ; preds = %37
  %47 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %8, %struct.Parser* noundef %47, i32 noundef 0)
  %48 = load %struct.Parser*, %struct.Parser** %3, align 4
  call void @peekn(%struct.Token* sret(%struct.Token) align 4 %9, %struct.Parser* noundef %48, i32 noundef 0)
  %49 = getelementptr inbounds %struct.Token, %struct.Token* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @tokentype_str(i32 noundef %50)
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %8, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* noundef %51) #7
  unreachable

52:                                               ; preds = %41, %30, %18, %13
  %53 = load %struct.AST*, %struct.AST** %2, align 4
  ret %struct.AST* %53
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-prototype" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
