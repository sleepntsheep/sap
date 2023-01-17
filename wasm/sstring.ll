; ModuleID = '../src/sstring.c'
source_filename = "../src/sstring.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct.string = type { i32, i32, [0 x i8] }

; Function Attrs: noinline nounwind optnone
define hidden i32 @sstring_alloc(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = call %struct.string* @sstring_getinfo(i8* noundef %3)
  %5 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define internal %struct.string* @sstring_getinfo(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = getelementptr inbounds i8, i8* %3, i32 -8
  %5 = bitcast i8* %4 to %struct.string*
  ret %struct.string* %5
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sstring_length(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = call %struct.string* @sstring_getinfo(i8* noundef %3)
  %5 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define hidden i8* @sstring_from(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.string*, align 4
  store i8* %0, i8** %3, align 4
  %6 = load i8*, i8** %3, align 4
  %7 = call i32 @strlen(i8* noundef %6) #5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add i32 8, %8
  %10 = add i32 %9, 1
  %11 = call noalias i8* @malloc(i32 noundef %10)
  %12 = bitcast i8* %11 to %struct.string*
  store %struct.string* %12, %struct.string** %5, align 4
  %13 = load %struct.string*, %struct.string** %5, align 4
  %14 = icmp ne %struct.string* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i8* null, i8** %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, 1
  %19 = load %struct.string*, %struct.string** %5, align 4
  %20 = getelementptr inbounds %struct.string, %struct.string* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.string*, %struct.string** %5, align 4
  %23 = getelementptr inbounds %struct.string, %struct.string* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.string*, %struct.string** %5, align 4
  %25 = getelementptr inbounds %struct.string, %struct.string* %24, i32 0, i32 2
  %26 = getelementptr inbounds [0 x i8], [0 x i8]* %25, i32 0, i32 0
  %27 = load i8*, i8** %3, align 4
  %28 = load i32, i32* %4, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %26, i8* align 1 %27, i32 %28, i1 false)
  %29 = load %struct.string*, %struct.string** %5, align 4
  %30 = getelementptr inbounds %struct.string, %struct.string* %29, i32 0, i32 2
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds [0 x i8], [0 x i8]* %30, i32 0, i32 %31
  store i8 0, i8* %32, align 1
  %33 = load %struct.string*, %struct.string** %5, align 4
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 2
  %35 = getelementptr inbounds [0 x i8], [0 x i8]* %34, i32 0, i32 0
  store i8* %35, i8** %2, align 4
  br label %36

36:                                               ; preds = %16, %15
  %37 = load i8*, i8** %2, align 4
  ret i8* %37
}

; Function Attrs: nocallback nounwind readonly willreturn
declare i32 @strlen(i8* noundef) #1

declare noalias i8* @malloc(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden i8* @sstring_realloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.string*, align 4
  store i8* %0, i8** %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 4
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %4, align 4
  %13 = call i32 @sstring_alloc(i8* noundef %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 4
  store i8* %16, i8** %3, align 4
  br label %32

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %4, align 4
  %20 = call %struct.string* @sstring_getinfo(i8* noundef %19)
  %21 = getelementptr inbounds %struct.string, %struct.string* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i8*, i8** %4, align 4
  %23 = call %struct.string* @sstring_getinfo(i8* noundef %22)
  %24 = bitcast %struct.string* %23 to i8*
  %25 = load i32, i32* %5, align 4
  %26 = add i32 8, %25
  %27 = call i8* @realloc(i8* noundef %24, i32 noundef %26)
  %28 = bitcast i8* %27 to %struct.string*
  store %struct.string* %28, %struct.string** %6, align 4
  %29 = load %struct.string*, %struct.string** %6, align 4
  %30 = getelementptr inbounds %struct.string, %struct.string* %29, i32 0, i32 2
  %31 = getelementptr inbounds [0 x i8], [0 x i8]* %30, i32 0, i32 0
  store i8* %31, i8** %3, align 4
  br label %32

32:                                               ; preds = %17, %15, %9
  %33 = load i8*, i8** %3, align 4
  ret i8* %33
}

declare i8* @realloc(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden i8* @sstring_cat(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %5 = load i8*, i8** %3, align 4
  %6 = load i8*, i8** %4, align 4
  %7 = load i8*, i8** %4, align 4
  %8 = call i32 @strlen(i8* noundef %7) #5
  %9 = call i8* @sstring_catlen(i8* noundef %5, i8* noundef %6, i32 noundef %8)
  ret i8* %9
}

; Function Attrs: noinline nounwind optnone
define hidden i8* @sstring_catlen(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  store i8* %1, i8** %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 4
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i8* null, i8** %4, align 4
  br label %35

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %13, 1
  %15 = call i8* @sstring_ensure_alloc(i8* noundef %12, i32 noundef %14)
  store i8* %15, i8** %5, align 4
  %16 = load i8*, i8** %5, align 4
  %17 = load i8*, i8** %5, align 4
  %18 = call i32 @sstring_length(i8* noundef %17)
  %19 = getelementptr inbounds i8, i8* %16, i32 %18
  %20 = load i8*, i8** %6, align 4
  %21 = load i32, i32* %7, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %19, i8* align 1 %20, i32 %21, i1 false)
  %22 = load i8*, i8** %5, align 4
  %23 = load i8*, i8** %5, align 4
  %24 = call i32 @sstring_length(i8* noundef %23)
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %24, %25
  %27 = getelementptr inbounds i8, i8* %22, i32 %26
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %5, align 4
  %30 = call %struct.string* @sstring_getinfo(i8* noundef %29)
  %31 = getelementptr inbounds %struct.string, %struct.string* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load i8*, i8** %5, align 4
  store i8* %34, i8** %4, align 4
  br label %35

35:                                               ; preds = %11, %10
  %36 = load i8*, i8** %4, align 4
  ret i8* %36
}

; Function Attrs: noinline nounwind optnone
define internal i8* @sstring_ensure_alloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i8*, i8** %3, align 4
  %8 = call i32 @sstring_length(i8* noundef %7)
  %9 = add i32 %6, %8
  %10 = call i32 @first_2n_not_less_than(i32 noundef %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %3, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @sstring_realloc(i8* noundef %11, i32 noundef %12)
  ret i8* %13
}

; Function Attrs: noinline nounwind optnone
define hidden i8* @sstring_format(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.string*, align 4
  store i8* %0, i8** %2, align 4
  %6 = bitcast i8** %3 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i8*, i8** %2, align 4
  %8 = load i8*, i8** %3, align 4
  %9 = call i32 @vsnprintf(i8* noundef null, i32 noundef 0, i8* noundef %7, i8* noundef %8)
  store i32 %9, i32* %4, align 4
  %10 = bitcast i8** %3 to i8*
  call void @llvm.va_end(i8* %10)
  %11 = load i32, i32* %4, align 4
  %12 = add i32 8, %11
  %13 = add i32 %12, 1
  %14 = call noalias i8* @malloc(i32 noundef %13)
  %15 = bitcast i8* %14 to %struct.string*
  store %struct.string* %15, %struct.string** %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, 1
  %18 = load %struct.string*, %struct.string** %5, align 4
  %19 = getelementptr inbounds %struct.string, %struct.string* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.string*, %struct.string** %5, align 4
  %22 = getelementptr inbounds %struct.string, %struct.string* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = bitcast i8** %3 to i8*
  call void @llvm.va_start(i8* %23)
  %24 = load %struct.string*, %struct.string** %5, align 4
  %25 = getelementptr inbounds %struct.string, %struct.string* %24, i32 0, i32 2
  %26 = getelementptr inbounds [0 x i8], [0 x i8]* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  %29 = load i8*, i8** %2, align 4
  %30 = load i8*, i8** %3, align 4
  %31 = call i32 @vsnprintf(i8* noundef %26, i32 noundef %28, i8* noundef %29, i8* noundef %30)
  %32 = bitcast i8** %3 to i8*
  call void @llvm.va_end(i8* %32)
  %33 = load %struct.string*, %struct.string** %5, align 4
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 2
  %35 = getelementptr inbounds [0 x i8], [0 x i8]* %34, i32 0, i32 0
  ret i8* %35
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare i32 @vsnprintf(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone
define hidden void @sstring_free(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  %3 = load i8*, i8** %2, align 4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 4
  %8 = call %struct.string* @sstring_getinfo(i8* noundef %7)
  %9 = bitcast %struct.string* %8 to i8*
  call void @free(i8* noundef %9)
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @first_2n_not_less_than(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = mul i32 %9, 2
  store i32 %10, i32* %3, align 4
  br label %4, !llvm.loop !2

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { nocallback nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { nocallback nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
