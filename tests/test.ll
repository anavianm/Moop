; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Foo = type { i32 }

@main_ptr = global i32 ()* @main
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.10 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@fmt.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.13 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define i32 @FoogetX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %x = load i32, i32* %field, align 4
  ret i32 %x
}

define void @FoosetX(%Foo* %objptr, i32 %x) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %x2 = alloca i32, align 4
  store i32 %x, i32* %x2, align 4
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %x3 = load i32, i32* %x2, align 4
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  store i32 %x3, i32* %field, align 4
  ret void
}

define void @Footestmethod(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str, i32 0, i32 0))
  ret void
}

define i32 @Mainmain() {
entry:
  %test = alloca %Foo*, align 8
  %Foo_constr_result = call %Foo* @Foo(i32 45)
  store %Foo* %Foo_constr_result, %Foo** %test, align 8
  %tmp = load %Foo*, %Foo** %test, align 8
  %getX_result = call i32 @FoogetX(%Foo* %tmp)
  %tmp1 = icmp eq i32 %getX_result, 30
  %tmp2 = xor i1 %tmp1, true
  br i1 %tmp2, label %then, label %else

merge:                                            ; preds = %else, %then
  %tmp6 = load %Foo*, %Foo** %test, align 8
  %getX_result7 = call i32 @FoogetX(%Foo* %tmp6)
  %tmp8 = icmp eq i32 %getX_result7, 10
  %tmp9 = xor i1 %tmp8, true
  br i1 %tmp9, label %then11, label %else16

then:                                             ; preds = %entry
  %tmp3 = load %Foo*, %Foo** %test, align 8
  call void @FoosetX(%Foo* %tmp3, i32 10)
  %tmp4 = load %Foo*, %Foo** %test, align 8
  %getX_result5 = call i32 @FoogetX(%Foo* %tmp4)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i32 %getX_result5)
  br label %merge

else:                                             ; preds = %entry
  br label %merge

merge10:                                          ; preds = %else16, %then11
  %tmp17 = load %Foo*, %Foo** %test, align 8
  %getX_result18 = call i32 @FoogetX(%Foo* %tmp17)
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i32 %getX_result18)
  ret i32 0

then11:                                           ; preds = %merge
  %tmp12 = load %Foo*, %Foo** %test, align 8
  call void @FoosetX(%Foo* %tmp12, i32 15)
  %tmp13 = load %Foo*, %Foo** %test, align 8
  %getX_result14 = call i32 @FoogetX(%Foo* %tmp13)
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i32 %getX_result14)
  br label %merge10

else16:                                           ; preds = %merge
  br label %merge10
}

define %Foo* @Foo(i32 %x) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 0, i32* %field, align 4
  %x1 = alloca i32, align 4
  store i32 %x, i32* %x1, align 4
  %x2 = load i32, i32* %x1, align 4
  %field3 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 %x2, i32* %field3, align 4
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
