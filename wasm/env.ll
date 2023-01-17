; ModuleID = '../src/env.c'
source_filename = "../src/env.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct.Env = type { %struct.Env*, i8**, %struct.SObject**, i32, i32 }
%struct.SObject = type { i32, %union.anon }
%union.anon = type { double }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"RuntimeError\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"env_lookup undeclared variable\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"variable declared twice\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"env_assign undeclared variable\00", align 1

; Function Attrs: noinline nounwind optnone
define hidden %struct.Env* @env_new(%struct.Env* noundef %0) #0 {
  %2 = alloca %struct.Env*, align 4
  %3 = alloca %struct.Env*, align 4
  store %struct.Env* %0, %struct.Env** %2, align 4
  %4 = call noalias i8* @malloc(i32 noundef 20)
  %5 = bitcast i8* %4 to %struct.Env*
  store %struct.Env* %5, %struct.Env** %3, align 4
  %6 = load %struct.Env*, %struct.Env** %2, align 4
  %7 = load %struct.Env*, %struct.Env** %3, align 4
  %8 = getelementptr inbounds %struct.Env, %struct.Env* %7, i32 0, i32 0
  store %struct.Env* %6, %struct.Env** %8, align 4
  %9 = load %struct.Env*, %struct.Env** %3, align 4
  %10 = getelementptr inbounds %struct.Env, %struct.Env* %9, i32 0, i32 4
  store i32 1024, i32* %10, align 4
  %11 = load %struct.Env*, %struct.Env** %3, align 4
  %12 = getelementptr inbounds %struct.Env, %struct.Env* %11, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.Env*, %struct.Env** %3, align 4
  %14 = getelementptr inbounds %struct.Env, %struct.Env* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = mul i32 4, %15
  %17 = call noalias i8* @malloc(i32 noundef %16)
  %18 = bitcast i8* %17 to i8**
  %19 = load %struct.Env*, %struct.Env** %3, align 4
  %20 = getelementptr inbounds %struct.Env, %struct.Env* %19, i32 0, i32 1
  store i8** %18, i8*** %20, align 4
  %21 = load %struct.Env*, %struct.Env** %3, align 4
  %22 = getelementptr inbounds %struct.Env, %struct.Env* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 4, %23
  %25 = call noalias i8* @malloc(i32 noundef %24)
  %26 = bitcast i8* %25 to %struct.SObject**
  %27 = load %struct.Env*, %struct.Env** %3, align 4
  %28 = getelementptr inbounds %struct.Env, %struct.Env* %27, i32 0, i32 2
  store %struct.SObject** %26, %struct.SObject*** %28, align 4
  %29 = load %struct.Env*, %struct.Env** %3, align 4
  ret %struct.Env* %29
}

declare noalias i8* @malloc(i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @env_lookup(%struct.Env* noundef %0, %struct.Token* noundef byval(%struct.Token) align 4 %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject**, align 4
  store %struct.Env* %0, %struct.Env** %4, align 4
  %6 = load %struct.Env*, %struct.Env** %4, align 4
  %7 = call %struct.SObject** @env_find(%struct.Env* noundef %6, %struct.Token* noundef byval(%struct.Token) align 4 %1)
  store %struct.SObject** %7, %struct.SObject*** %5, align 4
  %8 = load %struct.SObject**, %struct.SObject*** %5, align 4
  %9 = icmp ne %struct.SObject** %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load %struct.Env*, %struct.Env** %4, align 4
  %12 = getelementptr inbounds %struct.Env, %struct.Env* %11, i32 0, i32 0
  %13 = load %struct.Env*, %struct.Env** %12, align 4
  %14 = icmp ne %struct.Env* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.Env*, %struct.Env** %4, align 4
  %17 = getelementptr inbounds %struct.Env, %struct.Env* %16, i32 0, i32 0
  %18 = load %struct.Env*, %struct.Env** %17, align 4
  %19 = call %struct.SObject* @env_lookup(%struct.Env* noundef %18, %struct.Token* noundef byval(%struct.Token) align 4 %1)
  store %struct.SObject* %19, %struct.SObject** %3, align 4
  br label %24

20:                                               ; preds = %10
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable

21:                                               ; preds = %2
  %22 = load %struct.SObject**, %struct.SObject*** %5, align 4
  %23 = load %struct.SObject*, %struct.SObject** %22, align 4
  store %struct.SObject* %23, %struct.SObject** %3, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %25
}

; Function Attrs: noinline nounwind optnone
define internal %struct.SObject** @env_find(%struct.Env* noundef %0, %struct.Token* noundef byval(%struct.Token) align 4 %1) #0 {
  %3 = alloca %struct.SObject**, align 4
  %4 = alloca %struct.Env*, align 4
  %5 = alloca i32, align 4
  store %struct.Env* %0, %struct.Env** %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.Env*, %struct.Env** %4, align 4
  %9 = getelementptr inbounds %struct.Env, %struct.Env* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 1
  %14 = load i8*, i8** %13, align 4
  %15 = load %struct.Env*, %struct.Env** %4, align 4
  %16 = getelementptr inbounds %struct.Env, %struct.Env* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds i8*, i8** %17, i32 %18
  %20 = load i8*, i8** %19, align 4
  %21 = icmp eq i8* %14, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 1
  %24 = load i8*, i8** %23, align 4
  %25 = load %struct.Env*, %struct.Env** %4, align 4
  %26 = getelementptr inbounds %struct.Env, %struct.Env* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds i8*, i8** %27, i32 %28
  %30 = load i8*, i8** %29, align 4
  %31 = call i32 @strcmp(i8* noundef %24, i8* noundef %30) #5
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22, %12
  %34 = load %struct.Env*, %struct.Env** %4, align 4
  %35 = getelementptr inbounds %struct.Env, %struct.Env* %34, i32 0, i32 2
  %36 = load %struct.SObject**, %struct.SObject*** %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds %struct.SObject*, %struct.SObject** %36, i32 %37
  store %struct.SObject** %38, %struct.SObject*** %3, align 4
  br label %44

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %6, !llvm.loop !2

43:                                               ; preds = %6
  store %struct.SObject** null, %struct.SObject*** %3, align 4
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.SObject**, %struct.SObject*** %3, align 4
  ret %struct.SObject** %45
}

; Function Attrs: noreturn
declare void @generic_error(i8* noundef, %struct.Token* noundef byval(%struct.Token) align 4, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone
define hidden void @env_define(%struct.Env* noundef %0, %struct.Token* noundef byval(%struct.Token) align 4 %1, %struct.SObject* noundef %2) #0 {
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject*, align 4
  %6 = alloca %struct.SObject**, align 4
  store %struct.Env* %0, %struct.Env** %4, align 4
  store %struct.SObject* %2, %struct.SObject** %5, align 4
  %7 = load %struct.Env*, %struct.Env** %4, align 4
  %8 = call %struct.SObject** @env_find(%struct.Env* noundef %7, %struct.Token* noundef byval(%struct.Token) align 4 %1)
  store %struct.SObject** %8, %struct.SObject*** %6, align 4
  %9 = load %struct.SObject**, %struct.SObject*** %6, align 4
  %10 = icmp ne %struct.SObject** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #4
  unreachable

12:                                               ; preds = %3
  %13 = load %struct.Env*, %struct.Env** %4, align 4
  %14 = getelementptr inbounds %struct.Env, %struct.Env* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Env*, %struct.Env** %4, align 4
  %17 = getelementptr inbounds %struct.Env, %struct.Env* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %12
  %21 = load %struct.Env*, %struct.Env** %4, align 4
  %22 = getelementptr inbounds %struct.Env, %struct.Env* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %23, 2
  store i32 %24, i32* %22, align 4
  %25 = load %struct.Env*, %struct.Env** %4, align 4
  %26 = getelementptr inbounds %struct.Env, %struct.Env* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 4
  %28 = bitcast i8** %27 to i8*
  %29 = load %struct.Env*, %struct.Env** %4, align 4
  %30 = getelementptr inbounds %struct.Env, %struct.Env* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 4, %31
  %33 = call i8* @realloc(i8* noundef %28, i32 noundef %32)
  %34 = bitcast i8* %33 to i8**
  %35 = load %struct.Env*, %struct.Env** %4, align 4
  %36 = getelementptr inbounds %struct.Env, %struct.Env* %35, i32 0, i32 1
  store i8** %34, i8*** %36, align 4
  %37 = load %struct.Env*, %struct.Env** %4, align 4
  %38 = getelementptr inbounds %struct.Env, %struct.Env* %37, i32 0, i32 2
  %39 = load %struct.SObject**, %struct.SObject*** %38, align 4
  %40 = bitcast %struct.SObject** %39 to i8*
  %41 = load %struct.Env*, %struct.Env** %4, align 4
  %42 = getelementptr inbounds %struct.Env, %struct.Env* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 4, %43
  %45 = call i8* @realloc(i8* noundef %40, i32 noundef %44)
  %46 = bitcast i8* %45 to %struct.SObject**
  %47 = load %struct.Env*, %struct.Env** %4, align 4
  %48 = getelementptr inbounds %struct.Env, %struct.Env* %47, i32 0, i32 2
  store %struct.SObject** %46, %struct.SObject*** %48, align 4
  br label %49

49:                                               ; preds = %20, %12
  %50 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 1
  %51 = load i8*, i8** %50, align 4
  %52 = load %struct.Env*, %struct.Env** %4, align 4
  %53 = getelementptr inbounds %struct.Env, %struct.Env* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 4
  %55 = load %struct.Env*, %struct.Env** %4, align 4
  %56 = getelementptr inbounds %struct.Env, %struct.Env* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds i8*, i8** %54, i32 %57
  store i8* %51, i8** %58, align 4
  %59 = load %struct.SObject*, %struct.SObject** %5, align 4
  %60 = load %struct.Env*, %struct.Env** %4, align 4
  %61 = getelementptr inbounds %struct.Env, %struct.Env* %60, i32 0, i32 2
  %62 = load %struct.SObject**, %struct.SObject*** %61, align 4
  %63 = load %struct.Env*, %struct.Env** %4, align 4
  %64 = getelementptr inbounds %struct.Env, %struct.Env* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.SObject*, %struct.SObject** %62, i32 %65
  store %struct.SObject* %59, %struct.SObject** %66, align 4
  %67 = load %struct.Env*, %struct.Env** %4, align 4
  %68 = getelementptr inbounds %struct.Env, %struct.Env* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 4
  ret void
}

declare i8* @realloc(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden void @env_assign(%struct.Env* noundef %0, %struct.Token* noundef byval(%struct.Token) align 4 %1, %struct.SObject* noundef %2) #0 {
  %4 = alloca %struct.Env*, align 4
  %5 = alloca %struct.SObject*, align 4
  %6 = alloca %struct.SObject**, align 4
  store %struct.Env* %0, %struct.Env** %4, align 4
  store %struct.SObject* %2, %struct.SObject** %5, align 4
  %7 = load %struct.Env*, %struct.Env** %4, align 4
  %8 = call %struct.SObject** @env_find(%struct.Env* noundef %7, %struct.Token* noundef byval(%struct.Token) align 4 %1)
  store %struct.SObject** %8, %struct.SObject*** %6, align 4
  %9 = load %struct.SObject**, %struct.SObject*** %6, align 4
  %10 = icmp ne %struct.SObject** %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load %struct.Env*, %struct.Env** %4, align 4
  %13 = getelementptr inbounds %struct.Env, %struct.Env* %12, i32 0, i32 0
  %14 = load %struct.Env*, %struct.Env** %13, align 4
  %15 = icmp ne %struct.Env* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.Env*, %struct.Env** %4, align 4
  %18 = getelementptr inbounds %struct.Env, %struct.Env* %17, i32 0, i32 0
  %19 = load %struct.Env*, %struct.Env** %18, align 4
  %20 = load %struct.SObject*, %struct.SObject** %5, align 4
  call void @env_assign(%struct.Env* noundef %19, %struct.Token* noundef byval(%struct.Token) align 4 %1, %struct.SObject* noundef %20)
  br label %22

21:                                               ; preds = %11
  call void (i8*, %struct.Token*, i8*, ...) @generic_error(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.Token* noundef byval(%struct.Token) align 4 %1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

22:                                               ; preds = %16
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.SObject*, %struct.SObject** %5, align 4
  %25 = load %struct.SObject**, %struct.SObject*** %6, align 4
  store %struct.SObject* %24, %struct.SObject** %25, align 4
  br label %26

26:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden void @env_free(%struct.Env* noundef %0) #0 {
  %2 = alloca %struct.Env*, align 4
  store %struct.Env* %0, %struct.Env** %2, align 4
  %3 = load %struct.Env*, %struct.Env** %2, align 4
  %4 = getelementptr inbounds %struct.Env, %struct.Env* %3, i32 0, i32 1
  %5 = load i8**, i8*** %4, align 4
  %6 = bitcast i8** %5 to i8*
  call void @free(i8* noundef %6)
  %7 = load %struct.Env*, %struct.Env** %2, align 4
  %8 = getelementptr inbounds %struct.Env, %struct.Env* %7, i32 0, i32 2
  %9 = load %struct.SObject**, %struct.SObject*** %8, align 4
  %10 = bitcast %struct.SObject** %9 to i8*
  call void @free(i8* noundef %10)
  %11 = load %struct.Env*, %struct.Env** %2, align 4
  %12 = bitcast %struct.Env* %11 to i8*
  call void @free(i8* noundef %12)
  ret void
}

declare void @free(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
