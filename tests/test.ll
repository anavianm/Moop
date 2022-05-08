; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Node_vtable = type { %Node* (i8*)*, void (%Node*, i8*)*, void (%Node*, %Node*)* }
%Node = type { %Node_vtable*, %Node*, i8* }
%LinkedList_vtable = type { %LinkedList* ()*, void (%LinkedList*, i32)*, i8* (%LinkedList*, i32)*, i32 (%LinkedList*)*, void (%LinkedList*, i8*)*, void (%LinkedList*)* }
%LinkedList = type { %LinkedList_vtable*, i32, %Node* }
%Bar_vtable = type { %Bar* ()* }
%Bar = type { %Bar_vtable*, i32 }
%Foo_vtable = type { %Foo* (i32)*, i32 (%Foo*)*, void (%Foo*)*, void (%Foo*)*, void (%Foo*)* }
%Foo = type { %Foo_vtable*, i32, i32, i32 }
%Main_vtable = type { i32 ()* }

@main_ptr = global i32 ()* @main
@Node_vtable = global %Node_vtable { %Node* (i8*)* @Node, void (%Node*, i8*)* @NodesetNext, void (%Node*, %Node*)* @NodesetNextNode }
@LinkedList_vtable = global %LinkedList_vtable { %LinkedList* ()* @LinkedList, void (%LinkedList*, i32)* @LinkedListdeleteElem, i8* (%LinkedList*, i32)* @LinkedListgetElem, i32 (%LinkedList*)* @LinkedListgetSize, void (%LinkedList*, i8*)* @LinkedListinsertElem, void (%LinkedList*)* @LinkedListprintLinkedList }
@Bar_vtable = global %Bar_vtable { %Bar* ()* @Bar }
@Foo_vtable = global %Foo_vtable { %Foo* (i32)* @Foo, i32 (%Foo*)* @FoogetX, void (%Foo*)* @FooprintX, void (%Foo*)* @FooprintY, void (%Foo*)* @Footestmethod }
@Main_vtable = global %Main_vtable { i32 ()* @Mainmain }
@str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
@fmt.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.19 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.21 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.22 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.25 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.27 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.28 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.30 = private unnamed_addr constant [23 x i8] c"Element does not exist\00", align 1
@fmt.31 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.32 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.34 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.35 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.36 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.37 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.38 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.39 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.40 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.41 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.42 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.43 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.44 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.46 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@fmt.47 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.48 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.49 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.50 = private unnamed_addr constant [11 x i8] c"!@#$%^&'()\00", align 1
@str.51 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

declare i32 @printf(i8*, ...)

define void @NodesetNext(%Node* %objptr, i8* %data) {
entry:
  %objptr1 = alloca %Node*
  store %Node* %objptr, %Node** %objptr1
  %data2 = alloca i8*
  store i8* %data, i8** %data2
  %tmp = load %Node*, %Node** %objptr1
  %mptr = load %Node* (i8*)*, %Node* (i8*)** getelementptr inbounds (%Node_vtable, %Node_vtable* @Node_vtable, i32 0, i32 0)
  %data3 = load i8*, i8** %data2
  %Node_constr_result = call %Node* %mptr(i8* %data3)
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 1
  store %Node* %Node_constr_result, %Node** %field
  ret void
}

define void @NodesetNextNode(%Node* %objptr, %Node* %node) {
entry:
  %objptr1 = alloca %Node*
  store %Node* %objptr, %Node** %objptr1
  %node2 = alloca %Node*
  store %Node* %node, %Node** %node2
  %tmp = load %Node*, %Node** %objptr1
  %node3 = load %Node*, %Node** %node2
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 1
  store %Node* %node3, %Node** %field
  ret void
}

define void @LinkedListinsertElem(%LinkedList* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %elem2 = alloca i8*
  store i8* %elem, i8** %elem2
  %i = alloca i32
  %curr = alloca %Node*
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field
  %tmp3 = icmp eq i32 %size, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %merge19, %then
  %tmp23 = load %LinkedList*, %LinkedList** %objptr1
  %tmp24 = load %LinkedList*, %LinkedList** %objptr1
  %field25 = getelementptr inbounds %LinkedList, %LinkedList* %tmp24, i32 0, i32 1
  %size26 = load i32, i32* %field25
  %tmp27 = add i32 %size26, 1
  %field28 = getelementptr inbounds %LinkedList, %LinkedList* %tmp23, i32 0, i32 1
  store i32 %tmp27, i32* %field28
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1
  %mptr = load %Node* (i8*)*, %Node* (i8*)** getelementptr inbounds (%Node_vtable, %Node_vtable* @Node_vtable, i32 0, i32 0)
  %elem5 = load i8*, i8** %elem2
  %Node_constr_result = call %Node* %mptr(i8* %elem5)
  %field6 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 2
  store %Node* %Node_constr_result, %Node** %field6
  br label %merge

else:                                             ; preds = %entry
  %tmp7 = load %LinkedList*, %LinkedList** %objptr1
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp7, i32 0, i32 2
  %first = load %Node*, %Node** %field8
  store %Node* %first, %Node** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %else
  %i13 = load i32, i32* %i
  %tmp14 = load %LinkedList*, %LinkedList** %objptr1
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 1
  %size16 = load i32, i32* %field15
  %tmp17 = sub i32 %size16, 1
  %tmp18 = icmp slt i32 %i13, %tmp17
  br i1 %tmp18, label %while_body, label %merge19

while_body:                                       ; preds = %while
  %tmp9 = load %Node*, %Node** %curr
  %field10 = getelementptr inbounds %Node, %Node* %tmp9, i32 0, i32 1
  %next = load %Node*, %Node** %field10
  store %Node* %next, %Node** %curr
  %i11 = load i32, i32* %i
  %tmp12 = add i32 %i11, 1
  store i32 %tmp12, i32* %i
  br label %while

merge19:                                          ; preds = %while
  %tmp20 = load %Node*, %Node** %curr
  %vtable_ptr = getelementptr inbounds %Node, %Node* %tmp20, i32 0, i32 0
  %vtable = load %Node_vtable*, %Node_vtable** %vtable_ptr
  %mptr21 = getelementptr inbounds %Node_vtable, %Node_vtable* %vtable, i32 0, i32 1
  %method = load void (%Node*, i8*)*, void (%Node*, i8*)** %mptr21
  %elem22 = load i8*, i8** %elem2
  call void %method(%Node* %tmp20, i8* %elem22)
  br label %merge
}

define i32 @LinkedListgetSize(%LinkedList* %objptr) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field
  ret i32 %size
}

define void @LinkedListprintLinkedList(%LinkedList* %objptr) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %curr = alloca %Node*
  %i = alloca i32
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 2
  %first = load %Node*, %Node** %field
  store %Node* %first, %Node** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1
  %field10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 1
  %size = load i32, i32* %field10
  %tmp11 = icmp slt i32 %i8, %size
  br i1 %tmp11, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp2 = load %Node*, %Node** %curr
  %field3 = getelementptr inbounds %Node, %Node* %tmp2, i32 0, i32 2
  %data = load i8*, i8** %field3
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.26, i32 0, i32 0), i8* %data)
  %tmp4 = load %Node*, %Node** %curr
  %field5 = getelementptr inbounds %Node, %Node* %tmp4, i32 0, i32 1
  %next = load %Node*, %Node** %field5
  store %Node* %next, %Node** %curr
  %i6 = load i32, i32* %i
  %tmp7 = add i32 %i6, 1
  store i32 %tmp7, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret void
}

define void @LinkedListdeleteElem(%LinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %index2 = alloca i32
  store i32 %index, i32* %index2
  %prev = alloca %Node*
  %curr = alloca %Node*
  %temp = alloca %Node*
  %i = alloca i32
  %index3 = load i32, i32* %index2
  %tmp = icmp eq i32 %index3, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else
  %tmp14 = load %LinkedList*, %LinkedList** %objptr1
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 2
  %first16 = load %Node*, %Node** %field15
  store %Node* %first16, %Node** %prev
  %tmp17 = load %LinkedList*, %LinkedList** %objptr1
  %field18 = getelementptr inbounds %LinkedList, %LinkedList* %tmp17, i32 0, i32 2
  %first19 = load %Node*, %Node** %field18
  store %Node* %first19, %Node** %temp
  %tmp20 = load %Node*, %Node** %temp
  %field21 = getelementptr inbounds %Node, %Node* %tmp20, i32 0, i32 1
  %next22 = load %Node*, %Node** %field21
  store %Node* %next22, %Node** %curr
  store i32 0, i32* %i
  br label %while

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 2
  %first = load %Node*, %Node** %field
  store %Node* %first, %Node** %temp
  %tmp5 = load %LinkedList*, %LinkedList** %objptr1
  %tmp6 = load %Node*, %Node** %temp
  %field7 = getelementptr inbounds %Node, %Node* %tmp6, i32 0, i32 1
  %next = load %Node*, %Node** %field7
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp5, i32 0, i32 2
  store %Node* %next, %Node** %field8
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1
  %tmp10 = load %LinkedList*, %LinkedList** %objptr1
  %field11 = getelementptr inbounds %LinkedList, %LinkedList* %tmp10, i32 0, i32 1
  %size = load i32, i32* %field11
  %tmp12 = sub i32 %size, 1
  %field13 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 1
  store i32 %tmp12, i32* %field13
  ret void

else:                                             ; preds = %entry
  br label %merge

while:                                            ; preds = %merge27, %merge
  %i47 = load i32, i32* %i
  %tmp48 = load %LinkedList*, %LinkedList** %objptr1
  %field49 = getelementptr inbounds %LinkedList, %LinkedList* %tmp48, i32 0, i32 1
  %size50 = load i32, i32* %field49
  %tmp51 = icmp slt i32 %i47, %size50
  br i1 %tmp51, label %while_body, label %merge52

while_body:                                       ; preds = %while
  %i23 = load i32, i32* %i
  %index24 = load i32, i32* %index2
  %tmp25 = sub i32 %index24, 1
  %tmp26 = icmp eq i32 %i23, %tmp25
  br i1 %tmp26, label %then28, label %else40

merge27:                                          ; preds = %else40
  %i45 = load i32, i32* %i
  %tmp46 = add i32 %i45, 1
  store i32 %tmp46, i32* %i
  br label %while

then28:                                           ; preds = %while_body
  %tmp29 = load %Node*, %Node** %curr
  %field30 = getelementptr inbounds %Node, %Node* %tmp29, i32 0, i32 1
  %next31 = load %Node*, %Node** %field30
  store %Node* %next31, %Node** %temp
  %tmp32 = load %Node*, %Node** %prev
  %vtable_ptr = getelementptr inbounds %Node, %Node* %tmp32, i32 0, i32 0
  %vtable = load %Node_vtable*, %Node_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %Node_vtable, %Node_vtable* %vtable, i32 0, i32 2
  %method = load void (%Node*, %Node*)*, void (%Node*, %Node*)** %mptr
  %temp33 = load %Node*, %Node** %temp
  call void %method(%Node* %tmp32, %Node* %temp33)
  %tmp34 = load %LinkedList*, %LinkedList** %objptr1
  %tmp35 = load %LinkedList*, %LinkedList** %objptr1
  %field36 = getelementptr inbounds %LinkedList, %LinkedList* %tmp35, i32 0, i32 1
  %size37 = load i32, i32* %field36
  %tmp38 = sub i32 %size37, 1
  %field39 = getelementptr inbounds %LinkedList, %LinkedList* %tmp34, i32 0, i32 1
  store i32 %tmp38, i32* %field39
  ret void

else40:                                           ; preds = %while_body
  %curr41 = load %Node*, %Node** %curr
  store %Node* %curr41, %Node** %prev
  %tmp42 = load %Node*, %Node** %curr
  %field43 = getelementptr inbounds %Node, %Node* %tmp42, i32 0, i32 1
  %next44 = load %Node*, %Node** %field43
  store %Node* %next44, %Node** %curr
  br label %merge27

merge52:                                          ; preds = %while
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.29, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.30, i32 0, i32 0))
  ret void
}

define i8* @LinkedListgetElem(%LinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %index2 = alloca i32
  store i32 %index, i32* %index2
  %curr = alloca %Node*
  %i = alloca i32
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 2
  %first = load %Node*, %Node** %field
  store %Node* %first, %Node** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i7 = load i32, i32* %i
  %index8 = load i32, i32* %index2
  %tmp9 = icmp slt i32 %i7, %index8
  br i1 %tmp9, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp3 = load %Node*, %Node** %curr
  %field4 = getelementptr inbounds %Node, %Node* %tmp3, i32 0, i32 1
  %next = load %Node*, %Node** %field4
  store %Node* %next, %Node** %curr
  %i5 = load i32, i32* %i
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i
  br label %while

merge:                                            ; preds = %while
  %tmp10 = load %Node*, %Node** %curr
  %field11 = getelementptr inbounds %Node, %Node* %tmp10, i32 0, i32 2
  %data = load i8*, i8** %field11
  ret i8* %data
}

define void @FooprintY(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*
  store %Foo* %objptr, %Foo** %objptr1
  %tmp = load %Foo*, %Foo** %objptr1
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 1
  %y = load i32, i32* %field
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.34, i32 0, i32 0), i32 %y)
  ret void
}

define i32 @FoogetX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*
  store %Foo* %objptr, %Foo** %objptr1
  %tmp = load %Foo*, %Foo** %objptr1
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 3
  %x = load i32, i32* %field
  ret i32 %x
}

define void @FooprintX(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*
  store %Foo* %objptr, %Foo** %objptr1
  %tmp = load %Foo*, %Foo** %objptr1
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 3
  %method = load void (%Foo*)*, void (%Foo*)** %mptr
  call void %method(%Foo* %tmp)
  %tmp2 = load %Foo*, %Foo** %objptr1
  %field = getelementptr inbounds %Foo, %Foo* %tmp2, i32 0, i32 3
  %x = load i32, i32* %field
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.40, i32 0, i32 0), i32 %x)
  ret void
}

define void @Footestmethod(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*
  store %Foo* %objptr, %Foo** %objptr1
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str.46, i32 0, i32 0))
  ret void
}

define i32 @Mainmain() {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 3) to i32))
  %Node_vtable = bitcast i8* %malloccall to %Node_vtable*
  %constr_ptr = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 0
  store %Node* (i8*)* @Node, %Node* (i8*)** %constr_ptr
  %constr_ptr1 = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 1
  store void (%Node*, i8*)* @NodesetNext, void (%Node*, i8*)** %constr_ptr1
  %constr_ptr2 = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 2
  store void (%Node*, %Node*)* @NodesetNextNode, void (%Node*, %Node*)** %constr_ptr2
  %sgl = load %Node_vtable, %Node_vtable* %Node_vtable
  store %Node_vtable %sgl, %Node_vtable* @Node_vtable
  %malloccall3 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 6) to i32))
  %LinkedList_vtable = bitcast i8* %malloccall3 to %LinkedList_vtable*
  %constr_ptr4 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 0
  store %LinkedList* ()* @LinkedList, %LinkedList* ()** %constr_ptr4
  %constr_ptr5 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 1
  store void (%LinkedList*, i32)* @LinkedListdeleteElem, void (%LinkedList*, i32)** %constr_ptr5
  %constr_ptr6 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 2
  store i8* (%LinkedList*, i32)* @LinkedListgetElem, i8* (%LinkedList*, i32)** %constr_ptr6
  %constr_ptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 3
  store i32 (%LinkedList*)* @LinkedListgetSize, i32 (%LinkedList*)** %constr_ptr7
  %constr_ptr8 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 4
  store void (%LinkedList*, i8*)* @LinkedListinsertElem, void (%LinkedList*, i8*)** %constr_ptr8
  %constr_ptr9 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 5
  store void (%LinkedList*)* @LinkedListprintLinkedList, void (%LinkedList*)** %constr_ptr9
  %sgl10 = load %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable
  store %LinkedList_vtable %sgl10, %LinkedList_vtable* @LinkedList_vtable
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %Bar_vtable = bitcast i8* %malloccall11 to %Bar_vtable*
  %constr_ptr12 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 0
  store %Bar* ()* @Bar, %Bar* ()** %constr_ptr12
  %sgl13 = load %Bar_vtable, %Bar_vtable* %Bar_vtable
  store %Bar_vtable %sgl13, %Bar_vtable* @Bar_vtable
  %malloccall14 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 5) to i32))
  %Foo_vtable = bitcast i8* %malloccall14 to %Foo_vtable*
  %constr_ptr15 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 0
  store %Foo* (i32)* @Foo, %Foo* (i32)** %constr_ptr15
  %constr_ptr16 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 1
  store i32 (%Foo*)* @FoogetX, i32 (%Foo*)** %constr_ptr16
  %constr_ptr17 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 2
  store void (%Foo*)* @FooprintX, void (%Foo*)** %constr_ptr17
  %constr_ptr18 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 3
  store void (%Foo*)* @FooprintY, void (%Foo*)** %constr_ptr18
  %constr_ptr19 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 4
  store void (%Foo*)* @Footestmethod, void (%Foo*)** %constr_ptr19
  %sgl20 = load %Foo_vtable, %Foo_vtable* %Foo_vtable
  store %Foo_vtable %sgl20, %Foo_vtable* @Foo_vtable
  %malloccall21 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %Main_vtable = bitcast i8* %malloccall21 to %Main_vtable*
  %constr_ptr22 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr22
  %sgl23 = load %Main_vtable, %Main_vtable* %Main_vtable
  store %Main_vtable %sgl23, %Main_vtable* @Main_vtable
  %test = alloca %Foo*
  %list = alloca %LinkedList*
  %mptr = load %Foo* (i32)*, %Foo* (i32)** getelementptr inbounds (%Foo_vtable, %Foo_vtable* @Foo_vtable, i32 0, i32 0)
  %Foo_constr_result = call %Foo* %mptr(i32 45)
  store %Foo* %Foo_constr_result, %Foo** %test
  %tmp = load %Foo*, %Foo** %test
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr
  %mptr24 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 2
  %method = load void (%Foo*)*, void (%Foo*)** %mptr24
  call void %method(%Foo* %tmp)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.49, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str.50, i32 0, i32 0))
  %mptr25 = load %LinkedList* ()*, %LinkedList* ()** getelementptr inbounds (%LinkedList_vtable, %LinkedList_vtable* @LinkedList_vtable, i32 0, i32 0)
  %LinkedList_constr_result = call %LinkedList* %mptr25()
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %list
  %tmp26 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr27 = getelementptr inbounds %LinkedList, %LinkedList* %tmp26, i32 0, i32 0
  %vtable28 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr27
  %mptr29 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable28, i32 0, i32 4
  %method30 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr29
  call void %method30(%LinkedList* %tmp26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @str.51, i32 0, i32 0))
  %tmp31 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr32 = getelementptr inbounds %LinkedList, %LinkedList* %tmp31, i32 0, i32 0
  %vtable33 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr32
  %mptr34 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable33, i32 0, i32 5
  %method35 = load void (%LinkedList*)*, void (%LinkedList*)** %mptr34
  call void %method35(%LinkedList* %tmp31)
  ret i32 0
}

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define %Node* @Node(i8* %data) {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 3) to i32))
  %Node = bitcast i8* %malloccall to %Node*
  %vtable = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 0
  store %Node_vtable* @Node_vtable, %Node_vtable** %vtable
  %field = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store %Node* null, %Node** %field
  %field1 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str, i32 0, i32 0), i8** %field1
  %data2 = alloca i8*
  store i8* %data, i8** %data2
  %data3 = load i8*, i8** %data2
  %field4 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 2
  store i8* %data3, i8** %field4
  ret %Node* %Node
}

define %LinkedList* @LinkedList() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%LinkedList* getelementptr (%LinkedList, %LinkedList* null, i32 1) to i32))
  %LinkedList = bitcast i8* %malloccall to %LinkedList*
  %vtable = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 0
  store %LinkedList_vtable* @LinkedList_vtable, %LinkedList_vtable** %vtable
  %field = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 1
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 2
  store %Node* null, %Node** %field1
  %field2 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 1
  store i32 0, i32* %field2
  ret %LinkedList* %LinkedList
}

define %Bar* @Bar() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Bar* getelementptr (%Bar, %Bar* null, i32 1) to i32))
  %Bar = bitcast i8* %malloccall to %Bar*
  %vtable = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 0
  store %Bar_vtable* @Bar_vtable, %Bar_vtable** %vtable
  %field = getelementptr inbounds %Bar, %Bar* %Bar, i32 0, i32 1
  store i32 0, i32* %field
  ret %Bar* %Bar
}

define %Foo* @Foo(i32 %x) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32))
  %Foo = bitcast i8* %malloccall to %Foo*
  %vtable = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  store %Foo_vtable* @Foo_vtable, %Foo_vtable** %vtable
  %field = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 2
  store i32 0, i32* %field1
  %field2 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 3
  store i32 0, i32* %field2
  %x3 = alloca i32
  store i32 %x, i32* %x3
  %x4 = load i32, i32* %x3
  %field5 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 3
  store i32 %x4, i32* %field5
  %field6 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store i32 10, i32* %field6
  call void @FooprintY(%Foo* %Foo)
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
