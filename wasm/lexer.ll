; ModuleID = '../src/lexer.c'
source_filename = "../src/lexer.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct._IO_FILE = type opaque
%struct.anon = type { i8*, i32 }
%struct.TokenList = type { i32, i32, %struct.Token* }
%struct.Token = type { i32, i8*, %struct.Span }
%struct.Span = type { i32, i32, i32, i32 }
%struct.Lexer = type { i8*, i32, i32, i32, %struct.TokenList*, i32, i32, %struct.Span }

@stderr = external constant %struct._IO_FILE*, align 4
@.str = private unnamed_addr constant [15 x i8] c"die at %s:%d: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"../src/lexer.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unexpected character near %4s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"expect at %s:%d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"peek(l) == ch\00", align 1
@handle_identifier.keywords = internal constant [12 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 30 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 32 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 24 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 23 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 25 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 28 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 29 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 27 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 26 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 21 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 31 }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1

; Function Attrs: noinline nounwind optnone
define hidden %struct.TokenList* @lex(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Lexer*, align 4
  %6 = alloca %struct.TokenList*, align 4
  store i8* %0, i8** %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %3, align 4
  %9 = call %struct.Lexer* @lexer_new(i8* noundef %8)
  store %struct.Lexer* %9, %struct.Lexer** %5, align 4
  %10 = load %struct.Lexer*, %struct.Lexer** %5, align 4
  call void @lexer_lex(%struct.Lexer* noundef %10)
  %11 = load %struct.Lexer*, %struct.Lexer** %5, align 4
  %12 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %11, i32 0, i32 4
  %13 = load %struct.TokenList*, %struct.TokenList** %12, align 4
  store %struct.TokenList* %13, %struct.TokenList** %6, align 4
  %14 = load %struct.Lexer*, %struct.Lexer** %5, align 4
  %15 = bitcast %struct.Lexer* %14 to i8*
  call void @free(i8* noundef %15)
  %16 = load %struct.TokenList*, %struct.TokenList** %6, align 4
  ret %struct.TokenList* %16
}

; Function Attrs: noinline nounwind optnone
define internal %struct.Lexer* @lexer_new(i8* noundef %0) #0 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.Lexer*, align 4
  %4 = alloca %struct.Span, align 4
  store i8* %0, i8** %2, align 4
  %5 = call noalias i8* @calloc(i32 noundef 1, i32 noundef 44)
  %6 = bitcast i8* %5 to %struct.Lexer*
  store %struct.Lexer* %6, %struct.Lexer** %3, align 4
  %7 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %8 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %7, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %2, align 4
  %10 = call i32 @strlen(i8* noundef %9) #6
  %11 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %12 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call %struct.TokenList* @tokenlist_new()
  %14 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %15 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %14, i32 0, i32 4
  store %struct.TokenList* %13, %struct.TokenList** %15, align 4
  %16 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %17 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %16, i32 0, i32 6
  store i32 0, i32* %17, align 4
  %18 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %19 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %18, i32 0, i32 5
  store i32 0, i32* %19, align 4
  %20 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %21 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.Span, %struct.Span* %4, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.Span, %struct.Span* %4, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.Span, %struct.Span* %4, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.Span, %struct.Span* %4, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = bitcast %struct.Span* %21 to i8*
  %27 = bitcast %struct.Span* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %26, i8* align 4 %27, i32 16, i1 false)
  %28 = load i8*, i8** %2, align 4
  %29 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %30 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 4
  %31 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  ret %struct.Lexer* %31
}

; Function Attrs: noinline nounwind optnone
define internal void @lexer_lex(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  br label %3

3:                                                ; preds = %131, %1
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %5 = call i32 @end(%struct.Lexer* noundef %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %132

8:                                                ; preds = %3
  %9 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @set_start(%struct.Lexer* noundef %9)
  %10 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %11 = call signext i8 @peekn(%struct.Lexer* noundef %10, i32 noundef 0)
  %12 = sext i8 %11 to i32
  switch i32 %12, label %95 [
    i32 32, label %13
    i32 9, label %13
    i32 10, label %16
    i32 13, label %16
    i32 94, label %25
    i32 40, label %29
    i32 41, label %33
    i32 123, label %37
    i32 125, label %41
    i32 38, label %45
    i32 124, label %49
    i32 43, label %53
    i32 45, label %57
    i32 42, label %61
    i32 47, label %65
    i32 37, label %69
    i32 61, label %73
    i32 64, label %77
    i32 33, label %81
    i32 60, label %83
    i32 62, label %85
    i32 58, label %87
    i32 48, label %89
    i32 49, label %89
    i32 50, label %89
    i32 51, label %89
    i32 52, label %89
    i32 53, label %89
    i32 54, label %89
    i32 55, label %89
    i32 56, label %89
    i32 57, label %89
    i32 34, label %91
    i32 46, label %93
  ]

13:                                               ; preds = %8, %8
  %14 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %15 = call signext i8 @advance(%struct.Lexer* noundef %14)
  br label %131

16:                                               ; preds = %8, %8
  %17 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %18 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %22 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %21, i32 0, i32 6
  store i32 0, i32* %22, align 4
  %23 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %24 = call signext i8 @advance(%struct.Lexer* noundef %23)
  br label %131

25:                                               ; preds = %8
  %26 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %26, i32 noundef 22)
  %27 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %28 = call signext i8 @advance(%struct.Lexer* noundef %27)
  br label %131

29:                                               ; preds = %8
  %30 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %30, i32 noundef 1)
  %31 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %32 = call signext i8 @advance(%struct.Lexer* noundef %31)
  br label %131

33:                                               ; preds = %8
  %34 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %34, i32 noundef 2)
  %35 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %36 = call signext i8 @advance(%struct.Lexer* noundef %35)
  br label %131

37:                                               ; preds = %8
  %38 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %38, i32 noundef 3)
  %39 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %40 = call signext i8 @advance(%struct.Lexer* noundef %39)
  br label %131

41:                                               ; preds = %8
  %42 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %42, i32 noundef 4)
  %43 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %44 = call signext i8 @advance(%struct.Lexer* noundef %43)
  br label %131

45:                                               ; preds = %8
  %46 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %46, i32 noundef 27)
  %47 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %48 = call signext i8 @advance(%struct.Lexer* noundef %47)
  br label %131

49:                                               ; preds = %8
  %50 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %50, i32 noundef 26)
  %51 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %52 = call signext i8 @advance(%struct.Lexer* noundef %51)
  br label %131

53:                                               ; preds = %8
  %54 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %54, i32 noundef 8)
  %55 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %56 = call signext i8 @advance(%struct.Lexer* noundef %55)
  br label %131

57:                                               ; preds = %8
  %58 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %58, i32 noundef 9)
  %59 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %60 = call signext i8 @advance(%struct.Lexer* noundef %59)
  br label %131

61:                                               ; preds = %8
  %62 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %62, i32 noundef 10)
  %63 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %64 = call signext i8 @advance(%struct.Lexer* noundef %63)
  br label %131

65:                                               ; preds = %8
  %66 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %66, i32 noundef 11)
  %67 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %68 = call signext i8 @advance(%struct.Lexer* noundef %67)
  br label %131

69:                                               ; preds = %8
  %70 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %70, i32 noundef 12)
  %71 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %72 = call signext i8 @advance(%struct.Lexer* noundef %71)
  br label %131

73:                                               ; preds = %8
  %74 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %74, i32 noundef 13)
  %75 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %76 = call signext i8 @advance(%struct.Lexer* noundef %75)
  br label %131

77:                                               ; preds = %8
  %78 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %78, i32 noundef 20)
  %79 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %80 = call signext i8 @advance(%struct.Lexer* noundef %79)
  br label %131

81:                                               ; preds = %8
  %82 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_bang(%struct.Lexer* noundef %82)
  br label %131

83:                                               ; preds = %8
  %84 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_left_angle(%struct.Lexer* noundef %84)
  br label %131

85:                                               ; preds = %8
  %86 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_right_angle(%struct.Lexer* noundef %86)
  br label %131

87:                                               ; preds = %8
  %88 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_colon(%struct.Lexer* noundef %88)
  br label %131

89:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %90 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_number(%struct.Lexer* noundef %90)
  br label %131

91:                                               ; preds = %8
  %92 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_double_quote(%struct.Lexer* noundef %92)
  br label %131

93:                                               ; preds = %8
  %94 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_dot(%struct.Lexer* noundef %94)
  br label %131

95:                                               ; preds = %8
  br i1 false, label %96, label %102

96:                                               ; preds = %95
  %97 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %98 = call signext i8 @peekn(%struct.Lexer* noundef %97, i32 noundef 0)
  %99 = sext i8 %98 to i32
  %100 = call i32 @isalpha(i32 noundef %99) #7
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %109

102:                                              ; preds = %95
  %103 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %104 = call signext i8 @peekn(%struct.Lexer* noundef %103, i32 noundef 0)
  %105 = sext i8 %104 to i32
  %106 = or i32 %105, 32
  %107 = sub i32 %106, 97
  %108 = icmp ult i32 %107, 26
  br i1 %108, label %114, label %109

109:                                              ; preds = %102, %96
  %110 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %111 = call signext i8 @peekn(%struct.Lexer* noundef %110, i32 noundef 0)
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 95
  br i1 %113, label %114, label %116

114:                                              ; preds = %109, %102, %96
  %115 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @handle_identifier(%struct.Lexer* noundef %115)
  br label %130

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %118, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 noundef 211)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %121 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %122 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 4
  %124 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %125 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds i8, i8* %123, i32 %126
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* noundef %127)
  call void @exit(i32 noundef 1) #8
  unreachable

129:                                              ; No predecessors!
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %93, %91, %89, %87, %85, %83, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %16, %13
  br label %3, !llvm.loop !2

132:                                              ; preds = %3
  %133 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %133, i32 noundef 34)
  ret void
}

declare void @free(i8* noundef) #1

declare noalias i8* @calloc(i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nounwind readonly willreturn
declare i32 @strlen(i8* noundef) #2

declare %struct.TokenList* @tokenlist_new() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @end(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %4 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %7 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp uge i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone
define internal void @set_start(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  %3 = alloca %struct.Span, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %5 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %8 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %10 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Span, %struct.Span* %3, i32 0, i32 0
  %12 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %13 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.Span, %struct.Span* %3, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.Span, %struct.Span* %3, i32 0, i32 2
  %17 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %18 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.Span, %struct.Span* %3, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = bitcast %struct.Span* %10 to i8*
  %22 = bitcast %struct.Span* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %21, i8* align 4 %22, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal signext i8 @peekn(%struct.Lexer* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Lexer*, align 4
  %4 = alloca i32, align 4
  store %struct.Lexer* %0, %struct.Lexer** %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %6 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 4
  %8 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %9 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %10, %11
  %13 = getelementptr inbounds i8, i8* %7, i32 %12
  %14 = load i8, i8* %13, align 1
  ret i8 %14
}

; Function Attrs: noinline nounwind optnone
define internal signext i8 @advance(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %4 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %8 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4
  %10 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %11 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i8, i8* %9, i32 %12
  %15 = load i8, i8* %14, align 1
  ret i8 %15
}

; Function Attrs: noinline nounwind optnone
define internal void @push(%struct.Lexer* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Lexer*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca %struct.Token, align 4
  store %struct.Lexer* %0, %struct.Lexer** %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i8* @sstring_from(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  store i8* %7, i8** %5, align 4
  %8 = load i8*, i8** %5, align 4
  %9 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %10 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 4
  %12 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %13 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds i8, i8* %11, i32 %14
  %16 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %17 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %20 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  %23 = call i8* @sstring_catlen(i8* noundef %8, i8* noundef %15, i32 noundef %22)
  store i8* %23, i8** %5, align 4
  %24 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %25 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %28 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.Span, %struct.Span* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %31 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %34 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.Span, %struct.Span* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %37 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %36, i32 0, i32 4
  %38 = load %struct.TokenList*, %struct.TokenList** %37, align 4
  %39 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 1
  %42 = load i8*, i8** %5, align 4
  store i8* %42, i8** %41, align 4
  %43 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 2
  %44 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %45 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %44, i32 0, i32 7
  %46 = bitcast %struct.Span* %43 to i8*
  %47 = bitcast %struct.Span* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %46, i8* align 4 %47, i32 16, i1 false)
  call void @tokenlist_push(%struct.TokenList* noundef %38, %struct.Token* noundef byval(%struct.Token) align 4 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_bang(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %3, i32 noundef 33)
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %5 = call signext i8 @peekn(%struct.Lexer* noundef %4, i32 noundef 0)
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 61
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %9, i32 noundef 61)
  %10 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %10, i32 noundef 14)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_left_angle(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %3, i32 noundef 60)
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %5 = call signext i8 @peekn(%struct.Lexer* noundef %4, i32 noundef 0)
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 61
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %10 = call signext i8 @advance(%struct.Lexer* noundef %9)
  %11 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %11, i32 noundef 18)
  br label %14

12:                                               ; preds = %1
  %13 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %13, i32 noundef 16)
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_right_angle(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %3, i32 noundef 62)
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %5 = call signext i8 @peekn(%struct.Lexer* noundef %4, i32 noundef 0)
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 61
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %10 = call signext i8 @advance(%struct.Lexer* noundef %9)
  %11 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %11, i32 noundef 17)
  br label %14

12:                                               ; preds = %1
  %13 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %13, i32 noundef 15)
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_colon(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %3, i32 noundef 58)
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %4, i32 noundef 61)
  %5 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %5, i32 noundef 19)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_number(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @set_start(%struct.Lexer* noundef %3)
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %6 = call signext i8 @peekn(%struct.Lexer* noundef %5, i32 noundef 0)
  %7 = sext i8 %6 to i32
  %8 = sub i32 %7, 48
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %12 = call signext i8 @advance(%struct.Lexer* noundef %11)
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  %14 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %14, i32 noundef 6)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_double_quote(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %3, i32 noundef 34)
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @set_start(%struct.Lexer* noundef %4)
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %7 = call signext i8 @peekn(%struct.Lexer* noundef %6, i32 noundef 0)
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 34
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %12 = call signext i8 @advance(%struct.Lexer* noundef %11)
  br label %5, !llvm.loop !5

13:                                               ; preds = %5
  %14 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %14, i32 noundef 7)
  %15 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %15, i32 noundef 34)
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @handle_dot(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  %3 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %3, i32 noundef 46)
  %4 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @consume(%struct.Lexer* noundef %4, i32 noundef 46)
  %5 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %5, i32 noundef 33)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @handle_identifier(%struct.Lexer* noundef %0) #0 {
  %2 = alloca %struct.Lexer*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.Lexer* %0, %struct.Lexer** %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %76, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 12
  br i1 %7, label %8, label %79

8:                                                ; preds = %5
  %9 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %10 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 4
  %12 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %13 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds i8, i8* %11, i32 %14
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @handle_identifier.keywords, i32 0, i32 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @handle_identifier.keywords, i32 0, i32 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* noundef %23) #6
  %25 = call i32 @strncmp(i8* noundef %15, i8* noundef %19, i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %75, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @handle_identifier.keywords, i32 0, i32 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* noundef %31) #6
  store i32 %32, i32* %4, align 4
  %33 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %34 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 4
  %36 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %37 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %38, %39
  %41 = getelementptr inbounds i8, i8* %35, i32 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 @isalnum(i32 noundef %43) #7
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %27
  %47 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %48 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 4
  %50 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %51 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %52, %53
  %55 = getelementptr inbounds i8, i8* %49, i32 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 95
  br i1 %58, label %59, label %60

59:                                               ; preds = %46, %27
  br label %76

60:                                               ; preds = %46
  %61 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @handle_identifier.keywords, i32 0, i32 %62
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  call void @push(%struct.Lexer* noundef %61, i32 noundef %65)
  %66 = load i32, i32* %3, align 4
  %67 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @handle_identifier.keywords, i32 0, i32 %66
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strlen(i8* noundef %69) #6
  %71 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %72 = getelementptr inbounds %struct.Lexer, %struct.Lexer* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %99

75:                                               ; preds = %8
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %5, !llvm.loop !6

79:                                               ; preds = %5
  br label %80

80:                                               ; preds = %94, %79
  %81 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %82 = call signext i8 @peekn(%struct.Lexer* noundef %81, i32 noundef 0)
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 95
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %87 = call signext i8 @peekn(%struct.Lexer* noundef %86, i32 noundef 0)
  %88 = sext i8 %87 to i32
  %89 = or i32 %88, 32
  %90 = sub i32 %89, 97
  %91 = icmp ult i32 %90, 26
  br label %92

92:                                               ; preds = %85, %80
  %93 = phi i1 [ true, %80 ], [ %91, %85 ]
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  %96 = call signext i8 @advance(%struct.Lexer* noundef %95)
  br label %80, !llvm.loop !7

97:                                               ; preds = %92
  %98 = load %struct.Lexer*, %struct.Lexer** %2, align 4
  call void @push(%struct.Lexer* noundef %98, i32 noundef 5)
  br label %99

99:                                               ; preds = %97, %60
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

declare i8* @sstring_from(i8* noundef) #1

declare i8* @sstring_catlen(i8* noundef, i8* noundef, i32 noundef) #1

declare void @tokenlist_push(%struct.TokenList* noundef, %struct.Token* noundef byval(%struct.Token) align 4) #1

; Function Attrs: noinline nounwind optnone
define internal void @consume(%struct.Lexer* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Lexer*, align 4
  %4 = alloca i32, align 4
  store %struct.Lexer* %0, %struct.Lexer** %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %2
  %6 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %7 = call signext i8 @peekn(%struct.Lexer* noundef %6, i32 noundef 0)
  %8 = sext i8 %7 to i32
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 noundef 63, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 noundef 1) #8
  unreachable

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.Lexer*, %struct.Lexer** %3, align 4
  %17 = call signext i8 @advance(%struct.Lexer* noundef %16)
  ret void
}

declare i32 @strncmp(i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isalnum(i32 noundef) #4

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { nocallback nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #6 = { nocallback nounwind readonly willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn }

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
