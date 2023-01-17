; ModuleID = '../src/sobject.c'
source_filename = "../src/sobject.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct._IO_FILE = type opaque
%struct.SObject = type { i32, %union.anon }
%union.anon = type { double }
%struct.anon = type { %struct.TokenList*, %struct.AST* }
%struct.TokenList = type { i32, i32, %struct.Token* }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }
%struct.AST = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.Token, double }

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [15 x i8] c"die at %s:%d: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"../src/sobject.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Unimp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"<table: %p>\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"<function: %p>\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %0) #0 {
  %2 = alloca %struct.SObject*, align 4
  %3 = call noalias i8* @malloc(i32 noundef 16)
  %4 = bitcast i8* %3 to %struct.SObject*
  store %struct.SObject* %4, %struct.SObject** %2, align 4
  %5 = load %struct.SObject*, %struct.SObject** %2, align 4
  %6 = bitcast %struct.SObject* %5 to i8*
  %7 = bitcast %struct.SObject* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %6, i8* align 8 %7, i32 16, i1 false)
  %8 = load %struct.SObject*, %struct.SObject** %2, align 4
  ret %struct.SObject* %8
}

declare noalias i8* @malloc(i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @sobject_istrue(%struct.SObject* noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca %struct.SObject*, align 4
  store %struct.SObject* %0, %struct.SObject** %3, align 4
  %4 = load %struct.SObject*, %struct.SObject** %3, align 4
  %5 = getelementptr inbounds %struct.SObject, %struct.SObject* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %8 [
    i32 1, label %7
    i32 0, label %7
  ]

7:                                                ; preds = %1, %1
  store i1 false, i1* %2, align 1
  br label %9

8:                                                ; preds = %1
  store i1 true, i1* %2, align 1
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i1, i1* %2, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @sobject_isequal(%struct.SObject* noundef %0, %struct.SObject* noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.SObject*, align 4
  %5 = alloca %struct.SObject*, align 4
  store %struct.SObject* %0, %struct.SObject** %4, align 4
  store %struct.SObject* %1, %struct.SObject** %5, align 4
  %6 = load %struct.SObject*, %struct.SObject** %4, align 4
  %7 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.SObject*, %struct.SObject** %5, align 4
  %10 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.SObject*, %struct.SObject** %4, align 4
  %16 = getelementptr inbounds %struct.SObject, %struct.SObject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %48 [
    i32 0, label %18
    i32 2, label %18
    i32 1, label %18
    i32 3, label %19
    i32 4, label %29
    i32 5, label %41
    i32 6, label %41
  ]

18:                                               ; preds = %14, %14, %14
  store i1 true, i1* %3, align 1
  br label %48

19:                                               ; preds = %14
  %20 = load %struct.SObject*, %struct.SObject** %4, align 4
  %21 = getelementptr inbounds %struct.SObject, %struct.SObject* %20, i32 0, i32 1
  %22 = bitcast %union.anon* %21 to double*
  %23 = load double, double* %22, align 8
  %24 = load %struct.SObject*, %struct.SObject** %5, align 4
  %25 = getelementptr inbounds %struct.SObject, %struct.SObject* %24, i32 0, i32 1
  %26 = bitcast %union.anon* %25 to double*
  %27 = load double, double* %26, align 8
  %28 = fcmp oeq double %23, %27
  store i1 %28, i1* %3, align 1
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.SObject*, %struct.SObject** %4, align 4
  %31 = getelementptr inbounds %struct.SObject, %struct.SObject* %30, i32 0, i32 1
  %32 = bitcast %union.anon* %31 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.SObject*, %struct.SObject** %5, align 4
  %35 = getelementptr inbounds %struct.SObject, %struct.SObject* %34, i32 0, i32 1
  %36 = bitcast %union.anon* %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* noundef %33, i8* noundef %37) #5
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  store i1 %40, i1* %3, align 1
  br label %48

41:                                               ; preds = %14, %14
  br label %42

42:                                               ; preds = %41
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 noundef 37)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 noundef 1) #6
  unreachable

47:                                               ; No predecessors!
  br label %48

48:                                               ; preds = %13, %18, %19, %29, %47, %14
  %49 = load i1, i1* %3, align 1
  ret i1 %49
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #3

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define hidden i8* @sobject_to_string(%struct.SObject* noundef %0) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.SObject*, align 4
  store %struct.SObject* %0, %struct.SObject** %3, align 4
  %4 = load %struct.SObject*, %struct.SObject** %3, align 4
  %5 = getelementptr inbounds %struct.SObject, %struct.SObject* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %31 [
    i32 1, label %7
    i32 2, label %9
    i32 0, label %11
    i32 3, label %13
    i32 4, label %19
    i32 5, label %25
    i32 6, label %28
  ]

7:                                                ; preds = %1
  %8 = call i8* @sstring_from(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i8* %8, i8** %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = call i8* @sstring_from(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %10, i8** %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = call i8* @sstring_from(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  store i8* %12, i8** %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.SObject*, %struct.SObject** %3, align 4
  %15 = getelementptr inbounds %struct.SObject, %struct.SObject* %14, i32 0, i32 1
  %16 = bitcast %union.anon* %15 to double*
  %17 = load double, double* %16, align 8
  %18 = call i8* (i8*, ...) @sstring_format(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double noundef %17)
  store i8* %18, i8** %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.SObject*, %struct.SObject** %3, align 4
  %21 = getelementptr inbounds %struct.SObject, %struct.SObject* %20, i32 0, i32 1
  %22 = bitcast %union.anon* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* (i8*, ...) @sstring_format(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* noundef %23)
  store i8* %24, i8** %2, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.SObject*, %struct.SObject** %3, align 4
  %27 = call i8* (i8*, ...) @sstring_format(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct.SObject* noundef %26)
  store i8* %27, i8** %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.SObject*, %struct.SObject** %3, align 4
  %30 = call i8* (i8*, ...) @sstring_format(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct.SObject* noundef %29)
  store i8* %30, i8** %2, align 4
  br label %31

31:                                               ; preds = %7, %9, %11, %13, %19, %25, %28, %1
  %32 = load i8*, i8** %2, align 4
  ret i8* %32
}

declare i8* @sstring_from(i8* noundef) #1

declare i8* @sstring_format(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define hidden %struct.SObject* @sobject_add(%struct.SObject* noundef %0, %struct.SObject* noundef %1) #0 {
  %3 = alloca %struct.SObject*, align 4
  %4 = alloca %struct.SObject*, align 4
  %5 = alloca %struct.SObject*, align 4
  %6 = alloca %struct.SObject, align 8
  %7 = alloca i8*, align 4
  %8 = alloca %struct.SObject, align 8
  store %struct.SObject* %0, %struct.SObject** %4, align 4
  store %struct.SObject* %1, %struct.SObject** %5, align 4
  %9 = load %struct.SObject*, %struct.SObject** %4, align 4
  %10 = getelementptr inbounds %struct.SObject, %struct.SObject* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.SObject*, %struct.SObject** %5, align 4
  %15 = getelementptr inbounds %struct.SObject, %struct.SObject* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 0
  store i32 3, i32* %19, align 8
  %20 = getelementptr inbounds %struct.SObject, %struct.SObject* %6, i32 0, i32 1
  %21 = bitcast %union.anon* %20 to double*
  %22 = load %struct.SObject*, %struct.SObject** %4, align 4
  %23 = getelementptr inbounds %struct.SObject, %struct.SObject* %22, i32 0, i32 1
  %24 = bitcast %union.anon* %23 to double*
  %25 = load double, double* %24, align 8
  %26 = load %struct.SObject*, %struct.SObject** %5, align 4
  %27 = getelementptr inbounds %struct.SObject, %struct.SObject* %26, i32 0, i32 1
  %28 = bitcast %union.anon* %27 to double*
  %29 = load double, double* %28, align 8
  %30 = fadd double %25, %29
  store double %30, double* %21, align 8
  %31 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %6)
  store %struct.SObject* %31, %struct.SObject** %3, align 4
  br label %61

32:                                               ; preds = %13, %2
  %33 = load %struct.SObject*, %struct.SObject** %4, align 4
  %34 = getelementptr inbounds %struct.SObject, %struct.SObject* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.SObject*, %struct.SObject** %5, align 4
  %39 = getelementptr inbounds %struct.SObject, %struct.SObject* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %60

42:                                               ; preds = %37, %32
  %43 = call i8* @sstring_from(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0))
  store i8* %43, i8** %7, align 4
  %44 = load i8*, i8** %7, align 4
  %45 = load %struct.SObject*, %struct.SObject** %4, align 4
  %46 = call i8* @sobject_to_string(%struct.SObject* noundef %45)
  %47 = call i8* @sstring_cat(i8* noundef %44, i8* noundef %46)
  store i8* %47, i8** %7, align 4
  %48 = load i8*, i8** %7, align 4
  %49 = load %struct.SObject*, %struct.SObject** %5, align 4
  %50 = call i8* @sobject_to_string(%struct.SObject* noundef %49)
  %51 = call i8* @sstring_cat(i8* noundef %48, i8* noundef %50)
  store i8* %51, i8** %7, align 4
  %52 = load %struct.SObject*, %struct.SObject** %4, align 4
  call void @sobject_free(%struct.SObject* noundef %52)
  %53 = load %struct.SObject*, %struct.SObject** %5, align 4
  call void @sobject_free(%struct.SObject* noundef %53)
  %54 = getelementptr inbounds %struct.SObject, %struct.SObject* %8, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = getelementptr inbounds %struct.SObject, %struct.SObject* %8, i32 0, i32 1
  %56 = bitcast %union.anon* %55 to i8**
  %57 = load i8*, i8** %7, align 4
  %58 = call i8* @sstring_from(i8* noundef %57)
  store i8* %58, i8** %56, align 8
  %59 = call %struct.SObject* @sobject_new(%struct.SObject* noundef byval(%struct.SObject) align 8 %8)
  store %struct.SObject* %59, %struct.SObject** %3, align 4
  br label %61

60:                                               ; preds = %37
  store %struct.SObject* null, %struct.SObject** %3, align 4
  br label %61

61:                                               ; preds = %60, %42, %18
  %62 = load %struct.SObject*, %struct.SObject** %3, align 4
  ret %struct.SObject* %62
}

declare i8* @sstring_cat(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone
define hidden void @sobject_free(%struct.SObject* noundef %0) #0 {
  %2 = alloca %struct.SObject*, align 4
  store %struct.SObject* %0, %struct.SObject** %2, align 4
  %3 = load %struct.SObject*, %struct.SObject** %2, align 4
  %4 = getelementptr inbounds %struct.SObject, %struct.SObject* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %17 [
    i32 4, label %6
    i32 6, label %11
  ]

6:                                                ; preds = %1
  %7 = load %struct.SObject*, %struct.SObject** %2, align 4
  %8 = getelementptr inbounds %struct.SObject, %struct.SObject* %7, i32 0, i32 1
  %9 = bitcast %union.anon* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @sstring_free(i8* noundef %10)
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.SObject*, %struct.SObject** %2, align 4
  %13 = getelementptr inbounds %struct.SObject, %struct.SObject* %12, i32 0, i32 1
  %14 = bitcast %union.anon* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load %struct.TokenList*, %struct.TokenList** %15, align 8
  call void @tokenlist_free(%struct.TokenList* noundef %16)
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %11, %6
  %19 = load %struct.SObject*, %struct.SObject** %2, align 4
  %20 = bitcast %struct.SObject* %19 to i8*
  call void @free(i8* noundef %20)
  ret void
}

declare void @sstring_free(i8* noundef) #1

declare void @tokenlist_free(%struct.TokenList* noundef) #1

declare void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
