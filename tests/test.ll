; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Moo_vtable = type { %Moo* ()*, void (%Moo*)*, void (%Moo*)*, void (%Moo*)*, void (%Moo*, i32)* }
%Moo = type { %Moo_vtable*, i32 }
%Bar_vtable = type { %Bar* ()*, void (%Moo*)*, void (%Moo*)*, void (%Bar*)*, void (%Moo*)*, void (%Moo*, i32)* }
%Bar = type { %Bar_vtable*, i32, i32, i32 }
%Foo_vtable = type { %Foo* (i32)*, i32 (%Foo*)*, void (%Foo*)*, void (%Moo*)*, void (%Foo*)*, void (%Bar*)*, void (%Moo*)*, void (%Moo*, i32)* }
%Foo = type { %Foo_vtable*, i32, i32, i32, i32, i32, i32 }
%Main_vtable = type { i32 ()* }

@main_ptr = global i32 ()* @main
@Moo_vtable = global %Moo_vtable { %Moo* ()* @Moo, void (%Moo*)* @MooprintBye, void (%Moo*)* @MooprintHello, void (%Moo*)* @MooprintZ, void (%Moo*, i32)* @MoosetZ }
@Bar_vtable = global %Bar_vtable { %Bar* ()* @Bar, void (%Moo*)* @MooprintBye, void (%Moo*)* @MooprintHello, void (%Bar*)* @BarprintY, void (%Moo*)* @MooprintZ, void (%Moo*, i32)* @MoosetZ }
@Foo_vtable = global %Foo_vtable { %Foo* (i32)* @Foo, i32 (%Foo*)* @FoogetX, void (%Foo*)* @FooprintBye, void (%Moo*)* @MooprintHello, void (%Foo*)* @FooprintX, void (%Bar*)* @BarprintY, void (%Moo*)* @MooprintZ, void (%Moo*, i32)* @MoosetZ }
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
@str = private unnamed_addr constant [7 x i8] c"Hello!\00", align 1
@fmt.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.16 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.19 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.21 = private unnamed_addr constant [8 x i8] c"Chicken\00", align 1
@fmt.22 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.23 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.26 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.29 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.30 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.31 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.32 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.34 = private unnamed_addr constant [5 x i8] c"Bye!\00", align 1
@fmt.35 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.36 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.37 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define void @MooprintZ(%Moo* %objptr) {
entry:
  %objptr1 = alloca %Moo*, align 8
  store %Moo* %objptr, %Moo** %objptr1, align 8
  %tmp = load %Moo*, %Moo** %objptr1, align 8
  %field = getelementptr inbounds %Moo, %Moo* %tmp, i32 0, i32 1
  %z = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.9, i32 0, i32 0), i32 %z)
  ret void
}

define void @MooprintHello(%Moo* %objptr) {
entry:
  %objptr1 = alloca %Moo*, align 8
  store %Moo* %objptr, %Moo** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i32 0, i32 0))
  ret void
}

define void @MoosetZ(%Moo* %objptr, i32 %z) {
entry:
  %objptr1 = alloca %Moo*, align 8
  store %Moo* %objptr, %Moo** %objptr1, align 8
  %z2 = alloca i32, align 4
  store i32 %z, i32* %z2, align 4
  %tmp = load %Moo*, %Moo** %objptr1, align 8
  %z3 = load i32, i32* %z2, align 4
  %field = getelementptr inbounds %Moo, %Moo* %tmp, i32 0, i32 1
  store i32 %z3, i32* %field, align 4
  ret void
}

define void @MooprintBye(%Moo* %objptr) {
entry:
  %objptr1 = alloca %Moo*, align 8
  store %Moo* %objptr, %Moo** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.21, i32 0, i32 0))
  ret void
}

define void @BarprintY(%Bar* %objptr) {
entry:
  %objptr1 = alloca %Bar*, align 8
  store %Bar* %objptr, %Bar** %objptr1, align 8
  %tmp = load %Bar*, %Bar** %objptr1, align 8
  %field = getelementptr inbounds %Bar, %Bar* %tmp, i32 0, i32 3
  %y = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.22, i32 0, i32 0), i32 %y)
  ret void
}

define i32 @FoogetX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 6
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
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 6
  %method = load void (%Moo*)*, void (%Moo*)** %mptr, align 8
  %bitcast_obj = bitcast %Foo* %tmp to %Moo*
  call void %method(%Moo* %bitcast_obj)
  %tmp2 = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr3 = getelementptr inbounds %Foo, %Foo* %tmp2, i32 0, i32 0
  %vtable4 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr3, align 8
  %mptr5 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable4, i32 0, i32 5
  %method6 = load void (%Bar*)*, void (%Bar*)** %mptr5, align 8
  %bitcast_obj7 = bitcast %Foo* %tmp2 to %Bar*
  call void %method6(%Bar* %bitcast_obj7)
  %tmp8 = load %Foo*, %Foo** %objptr1, align 8
  %field = getelementptr inbounds %Foo, %Foo* %tmp8, i32 0, i32 6
  %x = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.28, i32 0, i32 0), i32 %x)
  ret void
}

define void @FooprintBye(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.34, i32 0, i32 0))
  ret void
}

define i32 @Mainmain() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Moo_vtable* getelementptr (%Moo_vtable, %Moo_vtable* null, i32 1) to i32))
  %Moo_vtable = bitcast i8* %malloccall to %Moo_vtable*
  %constr_ptr = getelementptr inbounds %Moo_vtable, %Moo_vtable* %Moo_vtable, i32 0, i32 0
  store %Moo* ()* @Moo, %Moo* ()** %constr_ptr, align 8
  %constr_ptr1 = getelementptr inbounds %Moo_vtable, %Moo_vtable* %Moo_vtable, i32 0, i32 1
  store void (%Moo*)* @MooprintBye, void (%Moo*)** %constr_ptr1, align 8
  %constr_ptr2 = getelementptr inbounds %Moo_vtable, %Moo_vtable* %Moo_vtable, i32 0, i32 2
  store void (%Moo*)* @MooprintHello, void (%Moo*)** %constr_ptr2, align 8
  %constr_ptr3 = getelementptr inbounds %Moo_vtable, %Moo_vtable* %Moo_vtable, i32 0, i32 3
  store void (%Moo*)* @MooprintZ, void (%Moo*)** %constr_ptr3, align 8
  %constr_ptr4 = getelementptr inbounds %Moo_vtable, %Moo_vtable* %Moo_vtable, i32 0, i32 4
  store void (%Moo*, i32)* @MoosetZ, void (%Moo*, i32)** %constr_ptr4, align 8
  %sgl = load %Moo_vtable, %Moo_vtable* %Moo_vtable, align 8
  store %Moo_vtable %sgl, %Moo_vtable* @Moo_vtable, align 8
  %malloccall5 = tail call i8* @malloc(i32 ptrtoint (%Bar_vtable* getelementptr (%Bar_vtable, %Bar_vtable* null, i32 1) to i32))
  %Bar_vtable = bitcast i8* %malloccall5 to %Bar_vtable*
  %constr_ptr6 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 0
  store %Bar* ()* @Bar, %Bar* ()** %constr_ptr6, align 8
  %constr_ptr7 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 1
  store void (%Moo*)* @MooprintBye, void (%Moo*)** %constr_ptr7, align 8
  %constr_ptr8 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 2
  store void (%Moo*)* @MooprintHello, void (%Moo*)** %constr_ptr8, align 8
  %constr_ptr9 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 3
  store void (%Bar*)* @BarprintY, void (%Bar*)** %constr_ptr9, align 8
  %constr_ptr10 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 4
  store void (%Moo*)* @MooprintZ, void (%Moo*)** %constr_ptr10, align 8
  %constr_ptr11 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 5
  store void (%Moo*, i32)* @MoosetZ, void (%Moo*, i32)** %constr_ptr11, align 8
  %sgl12 = load %Bar_vtable, %Bar_vtable* %Bar_vtable, align 8
  store %Bar_vtable %sgl12, %Bar_vtable* @Bar_vtable, align 8
  %malloccall13 = tail call i8* @malloc(i32 ptrtoint (%Foo_vtable* getelementptr (%Foo_vtable, %Foo_vtable* null, i32 1) to i32))
  %Foo_vtable = bitcast i8* %malloccall13 to %Foo_vtable*
  %constr_ptr14 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 0
  store %Foo* (i32)* @Foo, %Foo* (i32)** %constr_ptr14, align 8
  %constr_ptr15 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 1
  store i32 (%Foo*)* @FoogetX, i32 (%Foo*)** %constr_ptr15, align 8
  %constr_ptr16 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 2
  store void (%Foo*)* @FooprintBye, void (%Foo*)** %constr_ptr16, align 8
  %constr_ptr17 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 3
  store void (%Moo*)* @MooprintHello, void (%Moo*)** %constr_ptr17, align 8
  %constr_ptr18 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 4
  store void (%Foo*)* @FooprintX, void (%Foo*)** %constr_ptr18, align 8
  %constr_ptr19 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 5
  store void (%Bar*)* @BarprintY, void (%Bar*)** %constr_ptr19, align 8
  %constr_ptr20 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 6
  store void (%Moo*)* @MooprintZ, void (%Moo*)** %constr_ptr20, align 8
  %constr_ptr21 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 7
  store void (%Moo*, i32)* @MoosetZ, void (%Moo*, i32)** %constr_ptr21, align 8
  %sgl22 = load %Foo_vtable, %Foo_vtable* %Foo_vtable, align 8
  store %Foo_vtable %sgl22, %Foo_vtable* @Foo_vtable, align 8
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%Main_vtable* getelementptr (%Main_vtable, %Main_vtable* null, i32 1) to i32))
  %Main_vtable = bitcast i8* %malloccall23 to %Main_vtable*
  %constr_ptr24 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr24, align 8
  %sgl25 = load %Main_vtable, %Main_vtable* %Main_vtable, align 8
  store %Main_vtable %sgl25, %Main_vtable* @Main_vtable, align 8
  %test = alloca %Foo*, align 8
  %mptr = load %Foo* (i32)*, %Foo* (i32)** getelementptr inbounds (%Foo_vtable, %Foo_vtable* @Foo_vtable, i32 0, i32 0), align 8
  %Foo_constr_result = call %Foo* %mptr(i32 45)
  store %Foo* %Foo_constr_result, %Foo** %test, align 8
  %tmp = load %Foo*, %Foo** %test, align 8
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr26 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 4
  %method = load void (%Foo*)*, void (%Foo*)** %mptr26, align 8
  call void %method(%Foo* %tmp)
  %tmp27 = load %Foo*, %Foo** %test, align 8
  %vtable_ptr28 = getelementptr inbounds %Foo, %Foo* %tmp27, i32 0, i32 0
  %vtable29 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr28, align 8
  %mptr30 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable29, i32 0, i32 6
  %method31 = load void (%Moo*)*, void (%Moo*)** %mptr30, align 8
  %bitcast_obj = bitcast %Foo* %tmp27 to %Moo*
  call void %method31(%Moo* %bitcast_obj)
  %tmp32 = load %Foo*, %Foo** %test, align 8
  %vtable_ptr33 = getelementptr inbounds %Foo, %Foo* %tmp32, i32 0, i32 0
  %vtable34 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr33, align 8
  %mptr35 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable34, i32 0, i32 7
  %method36 = load void (%Moo*, i32)*, void (%Moo*, i32)** %mptr35, align 8
  %bitcast_obj37 = bitcast %Foo* %tmp32 to %Moo*
  call void %method36(%Moo* %bitcast_obj37, i32 30)
  %tmp38 = load %Foo*, %Foo** %test, align 8
  %vtable_ptr39 = getelementptr inbounds %Foo, %Foo* %tmp38, i32 0, i32 0
  %vtable40 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr39, align 8
  %mptr41 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable40, i32 0, i32 6
  %method42 = load void (%Moo*)*, void (%Moo*)** %mptr41, align 8
  %bitcast_obj43 = bitcast %Foo* %tmp38 to %Moo*
  call void %method42(%Moo* %bitcast_obj43)
  ret i32 0
}

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define %Moo* @Moo() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Moo* getelementptr (%Moo, %Moo* null, i32 1) to i32))
  %Moo = bitcast i8* %malloccall to %Moo*
  %vtable = getelementptr inbounds %Moo, %Moo* %Moo, i32 0, i32 0
  store %Moo_vtable* @Moo_vtable, %Moo_vtable** %vtable, align 8
  %field = getelementptr inbounds %Moo, %Moo* %Moo, i32 0, i32 1
  store i32 0, i32* %field, align 4
  ret %Moo* %Moo
}

define %Bar* @Bar() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Bar* getelementptr (%Bar, %Bar* null, i32 1) to i32))
  %Bar = bitcast i8* %malloccall to %Bar*
  %vtable = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 0
  store %Bar_vtable* @Bar_vtable, %Bar_vtable** %vtable, align 8
  %field = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 1
  store i32 0, i32* %field, align 4
  %field1 = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 2
  store i32 0, i32* %field1, align 4
  %field2 = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 3
  store i32 0, i32* %field2, align 4
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
  %field3 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 4
  store i32 0, i32* %field3, align 4
  %field4 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 5
  store i32 0, i32* %field4, align 4
  %field5 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 6
  store i32 0, i32* %field5, align 4
  %x6 = alloca i32, align 4
  store i32 %x, i32* %x6, align 4
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  %vtable7 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable7, i32 0, i32 2
  %method = load void (%Foo*)*, void (%Foo*)** %mptr, align 8
  call void %method(%Foo* %Foo)
  %x8 = load i32, i32* %x6, align 4
  %field9 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 6
  store i32 %x8, i32* %field9, align 4
  %field10 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 3
  store i32 10, i32* %field10, align 4
  %field11 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store i32 20, i32* %field11, align 4
  %vtable_ptr12 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  %vtable13 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr12, align 8
  %mptr14 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable13, i32 0, i32 6
  %method15 = load void (%Moo*)*, void (%Moo*)** %mptr14, align 8
  %bitcast_obj = bitcast %Foo* %Foo to %Moo*
  call void %method15(%Moo* %bitcast_obj)
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
