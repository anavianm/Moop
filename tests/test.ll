; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Foo = type { i32 }
%Foo_vtable = type { %Foo* (i32)*, i32 (%Foo*)* }
%Main_vtable = type { i32 ()* }

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

declare i32 @printf(i8*, ...)

define i32 @FoogetX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %x = load i32, i32* %field, align 4
  ret i32 %x
}

define i32 @Mainmain() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo_vtable* getelementptr (%Foo_vtable, %Foo_vtable* null, i32 1) to i32))
  %Foo_vtable = bitcast i8* %malloccall to %Foo_vtable*
  %constr_ptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 0
  store %Foo* (i32)* @Foo, %Foo* (i32)** %constr_ptr, align 8
  %constr_ptr1 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 1
  store i32 (%Foo*)* @FoogetX, i32 (%Foo*)** %constr_ptr1, align 8
  %malloccall2 = tail call i8* @malloc(i32 ptrtoint (%Main_vtable* getelementptr (%Main_vtable, %Main_vtable* null, i32 1) to i32))
  %Main_vtable = bitcast i8* %malloccall2 to %Main_vtable*
  %constr_ptr3 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr3, align 8
  %test = alloca %Foo*, align 8
  %constr_call_ptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 0
  %mptr = load %Foo* (i32)*, %Foo* (i32)** %constr_call_ptr, align 8
  %Foo_constr_result = call %Foo* %mptr(i32 45)
  store %Foo* %Foo_constr_result, %Foo** %test, align 8
  %tmp = load %Foo*, %Foo** %test, align 8
  %getX_result = call i32 @FoogetX(%Foo* %tmp)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %getX_result)
  ret i32 0
}

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
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
