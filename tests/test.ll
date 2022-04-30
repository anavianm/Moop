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
@str = private unnamed_addr constant [5 x i8] c"here\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
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
  %tmp1 = icmp eq i32 %getX_result, 45
  br i1 %tmp1, label %then, label %else

merge:                                            ; preds = %else, %then
  %tmp2 = load %Foo*, %Foo** %test
  %getX_result3 = call i32 @FoogetX(%Foo* %tmp2)
  %tmp4 = icmp eq i32 %getX_result3, 30
  %tmp5 = xor i1 %tmp4, true
  br i1 %tmp5, label %then7, label %else12

then:                                             ; preds = %entry
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str, i32 0, i32 0))
  br label %merge

else:                                             ; preds = %entry
  br label %merge

merge6:                                           ; preds = %else12, %then7
  %tmp13 = load %Foo*, %Foo** %test
  %getX_result14 = call i32 @FoogetX(%Foo* %tmp13)
  %tmp15 = icmp eq i32 %getX_result14, 10
  %tmp16 = xor i1 %tmp15, true
  br i1 %tmp16, label %then18, label %else23

then7:                                            ; preds = %merge
  %tmp8 = load %Foo*, %Foo** %test
  call void @FoosetX(%Foo* %tmp8, i32 10)
  %tmp9 = load %Foo*, %Foo** %test
  %getX_result10 = call i32 @FoogetX(%Foo* %tmp9)
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %getX_result10)
  br label %merge6

else12:                                           ; preds = %merge
  br label %merge6

merge17:                                          ; preds = %else23, %then18
  %tmp24 = load %Foo*, %Foo** %test
  %getX_result25 = call i32 @FoogetX(%Foo* %tmp24)
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %getX_result25)
  ret i32 0

then18:                                           ; preds = %merge6
  %tmp19 = load %Foo*, %Foo** %test
  call void @FoosetX(%Foo* %tmp19, i32 15)
  %tmp20 = load %Foo*, %Foo** %test
  %getX_result21 = call i32 @FoogetX(%Foo* %tmp20)
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %getX_result21)
  br label %merge17

else23:                                           ; preds = %merge6
  br label %merge17
}

define %Foo* @Foo(i32 %x) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 0, i32* %field
  %x1 = alloca i32
  store i32 %x, i32* %x1
  %x2 = load i32, i32* %x1
  %field3 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 %x2, i32* %field3
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
