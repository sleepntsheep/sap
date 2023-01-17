; ModuleID = '../src/error.c'
source_filename = "../src/error.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct._IO_FILE = type opaque
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s near line %d col %d: %10s\00", align 1

; Function Attrs: noinline noreturn nounwind optnone
define hidden void @generic_error(i8* noundef %0, %struct.Token* noundef byval(%struct.Token) align 4 %1, i8* noundef %2, ...) #0 {
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  store i8* %0, i8** %4, align 4
  store i8* %2, i8** %5, align 4
  %7 = bitcast i8** %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %9 = load i8*, i8** %4, align 4
  %10 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.Span, %struct.Span* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.Span, %struct.Span* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %1, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* noundef %9, i32 noundef %12, i32 noundef %15, i8* noundef %17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %20 = load i8*, i8** %5, align 4
  %21 = load i8*, i8** %6, align 4
  %22 = call i32 @vfprintf(%struct._IO_FILE* noundef %19, i8* noundef %20, i8* noundef %21)
  %23 = bitcast i8** %6 to i8*
  call void @llvm.va_end(i8* %23)
  call void @exit(i32 noundef 1) #4
  unreachable
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline noreturn nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 14.0.6"}
