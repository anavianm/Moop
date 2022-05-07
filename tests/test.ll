; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Bar_vtable = type { %Bar* ()* }
%Bar = type { %Bar_vtable*, i32 }
%Foo_vtable = type { %Foo* (i32)*, i32 (%Foo*)*, void (%Foo*)*, void (%Foo*)* }
%Foo = type { %Foo_vtable*, i32, i32, i32 }
%Main_vtable = type { i32 ()* }

@main_ptr = global i32 ()* @main
@Bar_vtable = global %Bar_vtable { %Bar* ()* @Bar }
@Foo_vtable = global %Foo_vtable { %Foo* (i32)* @Foo, i32 (%Foo*)* @FoogetX, void (%Foo*)* @FooprintX, void (%Foo*)* @FooprintY }
@Main_vtable = global %Main_vtable { i32 ()* @Mainmain }
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
@str = private unnamed_addr constant [11 x i8] c"!@#$%^&'()\00", align 1

declare i32 @printf(i8*, ...)

define void @FooprintY(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 1
  %y = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.6, i32 0, i32 0), i32 %y)
  ret void
}

define i32 @FoogetX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 3
  %x = load i32, i32* %field, align 4
  ret i32 %x
}

define void @FooprintX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 3
  %method = load void (%Foo*)*, void (%Foo*)** %mptr, align 8
  call void %method(%Foo* %tmp)
  %tmp2 = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp2, i32 0, i32 3
  %x = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i32 %x)
  ret void
}

define i32 @Mainmain() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Bar_vtable* getelementptr (%Bar_vtable, %Bar_vtable* null, i32 1) to i32))
  %Bar_vtable = bitcast i8* %malloccall to %Bar_vtable*
  %constr_ptr = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 0
  store %Bar* ()* @Bar, %Bar* ()** %constr_ptr, align 8
  %sgl = load %Bar_vtable, %Bar_vtable* %Bar_vtable, align 8
  store %Bar_vtable %sgl, %Bar_vtable* @Bar_vtable, align 8
  %malloccall1 = tail call i8* @malloc(i32 ptrtoint (%Foo_vtable* getelementptr (%Foo_vtable, %Foo_vtable* null, i32 1) to i32))
  %Foo_vtable = bitcast i8* %malloccall1 to %Foo_vtable*
  %constr_ptr2 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 0
  store %Foo* (i32)* @Foo, %Foo* (i32)** %constr_ptr2, align 8
  %constr_ptr3 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 1
  store i32 (%Foo*)* @FoogetX, i32 (%Foo*)** %constr_ptr3, align 8
  %constr_ptr4 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 2
  store void (%Foo*)* @FooprintX, void (%Foo*)** %constr_ptr4, align 8
  %constr_ptr5 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 3
  store void (%Foo*)* @FooprintY, void (%Foo*)** %constr_ptr5, align 8
  %sgl6 = load %Foo_vtable, %Foo_vtable* %Foo_vtable, align 8
  store %Foo_vtable %sgl6, %Foo_vtable* @Foo_vtable, align 8
  %malloccall7 = tail call i8* @malloc(i32 ptrtoint (%Main_vtable* getelementptr (%Main_vtable, %Main_vtable* null, i32 1) to i32))
  %Main_vtable = bitcast i8* %malloccall7 to %Main_vtable*
  %constr_ptr8 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr8, align 8
  %sgl9 = load %Main_vtable, %Main_vtable* %Main_vtable, align 8
  store %Main_vtable %sgl9, %Main_vtable* @Main_vtable, align 8
  %test = alloca %Foo*, align 8
  %mptr = load %Foo* (i32)*, %Foo* (i32)** getelementptr inbounds (%Foo_vtable, %Foo_vtable* @Foo_vtable, i32 0, i32 0), align 8
  %Foo_constr_result = call %Foo* %mptr(i32 45)
  store %Foo* %Foo_constr_result, %Foo** %test, align 8
  %tmp = load %Foo*, %Foo** %test, align 8
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr10 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 2
  %method = load void (%Foo*)*, void (%Foo*)** %mptr10, align 8
  call void %method(%Foo* %tmp)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str, i32 0, i32 0))
  ret i32 0
}

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define %Bar* @Bar() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Bar* getelementptr (%Bar, %Bar* null, i32 1) to i32))
  %Bar = bitcast i8* %malloccall to %Bar*
  %vtable = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 0
  store %Bar_vtable* @Bar_vtable, %Bar_vtable** %vtable, align 8
  %field = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 1
  store i32 0, i32* %field, align 4
  ret %Bar* %Bar
}

define %Foo* @Foo(i32 %x) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %vtable = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store %Foo_vtable* @Foo_vtable, %Foo_vtable** %vtable, align 8
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store i32 0, i32* %field, align 4
  %field1 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 2
  store i32 0, i32* %field1, align 4
  %field2 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 3
  store i32 0, i32* %field2, align 4
  %x3 = alloca i32, align 4
  store i32 %x, i32* %x3, align 4
  %x4 = load i32, i32* %x3, align 4
  %field5 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 3
  store i32 %x4, i32* %field5, align 4
  %field6 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store i32 10, i32* %field6, align 4
  call void @FooprintY(%Foo* %Foo)
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
