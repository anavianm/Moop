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
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32))
  %foo = bitcast i8* %malloccall to %Foo*
  %field = getelementptr inbounds %Foo, %Foo* %foo, i32 0, i32 0
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %Foo, %Foo* %foo, i32 0, i32 1
  store double 0.000000e+00, double* %field1
  store %Foo* %foo, %Foo* %foo
  %field2 = getelementptr inbounds %Foo, %Foo* %foo, i32 0, i32 0
  %x = load i32, i32* %field2
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.3, i32 0, i32 0), i32 %x)
  ret i32 0
}

declare noalias i8* @malloc(i32)
