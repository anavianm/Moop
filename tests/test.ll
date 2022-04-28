; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Foo = type { i32, double }

@main_ptr = global i32 ()* @main
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define i32 @Mainmain() {
entry:
  %test = alloca %Foo*
  %Foo_constr_result = call %Foo* @Foo()
  store %Foo* %Foo_constr_result, %Foo** %test
  %tmp = load %Foo*, %Foo** %test
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %x = load i32, i32* %field
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %x)
  ret i32 0
}

define %Foo* @Foo() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store double 0.000000e+00, double* %field1
  %field2 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 10, i32* %field2
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
