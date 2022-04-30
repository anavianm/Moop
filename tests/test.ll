; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Bar = type { i32 }
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
@fmt.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.13 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.16 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define i32 @BargetA(%Bar* %objptr) {
entry:
  %objptr1 = alloca %Bar*
  store %Bar* %objptr, %Bar** %objptr1
  %tmp = load %Bar*, %Bar** %objptr1
  %field = getelementptr inbounds %Bar, %Bar* %tmp, i32 0, i32 0
  %a = load i32, i32* %field
  ret i32 %a
}

define i32 @FoogetX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*
  store %Foo* %objptr, %Foo** %objptr1
  %tmp = load %Foo*, %Foo** %objptr1
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %x = load i32, i32* %field
  ret i32 %x
}

define void @FoosetX(%Foo* %objptr, i32 %x) {
entry:
  %objptr1 = alloca %Foo*
  store %Foo* %objptr, %Foo** %objptr1
  %x2 = alloca i32
  store i32 %x, i32* %x2
  %tmp = load %Foo*, %Foo** %objptr1
  %x3 = load i32, i32* %x2
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  store i32 %x3, i32* %field
  ret void
}

define i32 @Mainmain() {
entry:
  %test = alloca %Foo*
  %Foo_constr_result = call %Foo* @Foo(i32 45)
  store %Foo* %Foo_constr_result, %Foo** %test
  %tmp = load %Foo*, %Foo** %test
  %getX_result = call i32 @FoogetX(%Foo* %tmp)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.15, i32 0, i32 0), i32 %getX_result)
  %tmp1 = load %Foo*, %Foo** %test
  call void @FoosetX(%Foo* %tmp1, i32 30)
  %tmp2 = load %Foo*, %Foo** %test
  %getX_result3 = call i32 @FoogetX(%Foo* %tmp2)
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.15, i32 0, i32 0), i32 %getX_result3)
  ret i32 0
}

define %Bar* @Bar() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %Bar = bitcast i8* %malloccall to %Bar*
  %field = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 0
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 0
  store i32 10, i32* %field1
  ret %Bar* %Bar
}

define %Foo* @Foo(i32 %x) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 0, i32* %field
  %x1 = alloca i32
  store i32 %x, i32* %x1
  %temp = alloca %Bar*
  %i = alloca i32
  %Bar_constr_result = call %Bar* @Bar()
  store %Bar* %Bar_constr_result, %Bar** %temp
  %x2 = load i32, i32* %x1
  %field3 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 %x2, i32* %field3
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i7 = load i32, i32* %i
  %tmp8 = icmp slt i32 %i7, 1
  br i1 %tmp8, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp = load %Bar*, %Bar** %temp
  %getA_result = call i32 @BargetA(%Bar* %tmp)
  %field4 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 %getA_result, i32* %field4
  %i5 = load i32, i32* %i
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
