; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Foo = type { i32, double, %Bar* }
%Bar = type { i8* }

@main_ptr = global i32 ()* @main
@str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.3 = private unnamed_addr constant [17 x i8] c"Bar Constructor!\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.8 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 1
  %c = load double, double* %field
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.8, i32 0, i32 0), double %c)
  ret i32 0
}

define %Bar* @Bar() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %Bar = bitcast i8* %malloccall to %Bar*
  %field = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str, i32 0, i32 0), i8** %field
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str.3, i32 0, i32 0))
  ret %Bar* %Bar
}

define %Foo* @Foo() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store double 0.000000e+00, double* %field1
  %field2 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 2
  store %Bar* null, %Bar** %field2
  %tmp = alloca %Bar*
  %Bar_constr_result = call %Bar* @Bar()
  store %Bar* %Bar_constr_result, %Bar** %tmp
  %tmp3 = load %Bar*, %Bar** %tmp
  %field4 = getelementptr inbounds %Bar, %Bar* %tmp3, i32 0, i32 0
  %x = load i8*, i8** %field4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i8* %x)
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
