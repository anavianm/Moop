; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Node_vtable = type { %Node* (i8*)*, void (%Node*, i8*)*, void (%Node*, %Node*)* }
%Node = type { %Node_vtable*, %Node*, i8* }
%LinkedList_vtable = type { %LinkedList* ()*, void (%LinkedList*, i32)*, i8* (%LinkedList*, i32)*, i32 (%LinkedList*)*, void (%LinkedList*, i8*)*, void (%LinkedList*)* }
%LinkedList = type { %LinkedList_vtable*, i32, %Node* }
%Main_vtable = type { i32 ()* }

@main_ptr = global i32 ()* @main
@Node_vtable = global %Node_vtable { %Node* (i8*)* @Node, void (%Node*, i8*)* @NodesetNext, void (%Node*, %Node*)* @NodesetNextNode }
@LinkedList_vtable = global %LinkedList_vtable { %LinkedList* ()* @LinkedList, void (%LinkedList*, i32)* @LinkedListdeleteElem, i8* (%LinkedList*, i32)* @LinkedListgetElem, i32 (%LinkedList*)* @LinkedListgetSize, void (%LinkedList*, i8*)* @LinkedListinsertElem, void (%LinkedList*)* @LinkedListprintLinkedList }
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
@str.24 = private unnamed_addr constant [23 x i8] c"Element does not exist\00", align 1
@fmt.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.26 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.29 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.30 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.31 = private unnamed_addr constant [31 x i8] c"Leclerc    86 Best Best Driver\00", align 1
@str.32 = private unnamed_addr constant [28 x i8] c"Verstappen 59 Bester Driver\00", align 1
@str.33 = private unnamed_addr constant [14 x i8] c"Perez      54\00", align 1
@str.34 = private unnamed_addr constant [14 x i8] c"Russell    49\00", align 1
@str.35 = private unnamed_addr constant [14 x i8] c"Sainz      38\00", align 1
@str.36 = private unnamed_addr constant [14 x i8] c"Norris     35\00", align 1
@str.37 = private unnamed_addr constant [14 x i8] c"Hamilton   28\00", align 1
@str.38 = private unnamed_addr constant [14 x i8] c"Bottas     24\00", align 1
@str.39 = private unnamed_addr constant [14 x i8] c"Ocon       20\00", align 1
@str.40 = private unnamed_addr constant [14 x i8] c"Magnussen  15\00", align 1
@str.41 = private unnamed_addr constant [14 x i8] c"Ricciardo  11\00", align 1
@str.42 = private unnamed_addr constant [14 x i8] c"Tsunoda    10\00", align 1
@str.43 = private unnamed_addr constant [14 x i8] c"Gasly       6\00", align 1
@str.44 = private unnamed_addr constant [14 x i8] c"Vettel      4\00", align 1
@str.45 = private unnamed_addr constant [14 x i8] c"Alonso      2\00", align 1
@str.46 = private unnamed_addr constant [14 x i8] c"Zhou        1\00", align 1
@str.47 = private unnamed_addr constant [14 x i8] c"Stroll      1\00", align 1
@str.48 = private unnamed_addr constant [14 x i8] c"Albon       1\00", align 1
@str.49 = private unnamed_addr constant [14 x i8] c"Shumacher   0\00", align 1
@str.50 = private unnamed_addr constant [14 x i8] c"Latifi      0\00", align 1
@str.51 = private unnamed_addr constant [37 x i8] c"Current Championship Points Rankings\00", align 1
@str.52 = private unnamed_addr constant [14 x i8] c"Remove Driver\00", align 1

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
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.20, i32 0, i32 0), i8* %data)
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
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.23, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.24, i32 0, i32 0))
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
  %Main_vtable = bitcast i8* %malloccall11 to %Main_vtable*
  %constr_ptr12 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr12
  %sgl13 = load %Main_vtable, %Main_vtable* %Main_vtable
  store %Main_vtable %sgl13, %Main_vtable* @Main_vtable
  %list = alloca %LinkedList*
  %mptr = load %LinkedList* ()*, %LinkedList* ()** getelementptr inbounds (%LinkedList_vtable, %LinkedList_vtable* @LinkedList_vtable, i32 0, i32 0)
  %LinkedList_constr_result = call %LinkedList* %mptr()
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %list
  %tmp = load %LinkedList*, %LinkedList** %list
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr14 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr14
  call void %method(%LinkedList* %tmp, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.31, i32 0, i32 0))
  %tmp15 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr16 = getelementptr inbounds %LinkedList, %LinkedList* %tmp15, i32 0, i32 0
  %vtable17 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr16
  %mptr18 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable17, i32 0, i32 4
  %method19 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr18
  call void %method19(%LinkedList* %tmp15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.32, i32 0, i32 0))
  %tmp20 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr21 = getelementptr inbounds %LinkedList, %LinkedList* %tmp20, i32 0, i32 0
  %vtable22 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr21
  %mptr23 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable22, i32 0, i32 4
  %method24 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr23
  call void %method24(%LinkedList* %tmp20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.33, i32 0, i32 0))
  %tmp25 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr26 = getelementptr inbounds %LinkedList, %LinkedList* %tmp25, i32 0, i32 0
  %vtable27 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr26
  %mptr28 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable27, i32 0, i32 4
  %method29 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr28
  call void %method29(%LinkedList* %tmp25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.34, i32 0, i32 0))
  %tmp30 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr31 = getelementptr inbounds %LinkedList, %LinkedList* %tmp30, i32 0, i32 0
  %vtable32 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr31
  %mptr33 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable32, i32 0, i32 4
  %method34 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr33
  call void %method34(%LinkedList* %tmp30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.35, i32 0, i32 0))
  %tmp35 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr36 = getelementptr inbounds %LinkedList, %LinkedList* %tmp35, i32 0, i32 0
  %vtable37 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr36
  %mptr38 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable37, i32 0, i32 4
  %method39 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr38
  call void %method39(%LinkedList* %tmp35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.36, i32 0, i32 0))
  %tmp40 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr41 = getelementptr inbounds %LinkedList, %LinkedList* %tmp40, i32 0, i32 0
  %vtable42 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr41
  %mptr43 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable42, i32 0, i32 4
  %method44 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr43
  call void %method44(%LinkedList* %tmp40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.37, i32 0, i32 0))
  %tmp45 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr46 = getelementptr inbounds %LinkedList, %LinkedList* %tmp45, i32 0, i32 0
  %vtable47 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr46
  %mptr48 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable47, i32 0, i32 4
  %method49 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr48
  call void %method49(%LinkedList* %tmp45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.38, i32 0, i32 0))
  %tmp50 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr51 = getelementptr inbounds %LinkedList, %LinkedList* %tmp50, i32 0, i32 0
  %vtable52 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr51
  %mptr53 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable52, i32 0, i32 4
  %method54 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr53
  call void %method54(%LinkedList* %tmp50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.39, i32 0, i32 0))
  %tmp55 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr56 = getelementptr inbounds %LinkedList, %LinkedList* %tmp55, i32 0, i32 0
  %vtable57 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr56
  %mptr58 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable57, i32 0, i32 4
  %method59 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr58
  call void %method59(%LinkedList* %tmp55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.40, i32 0, i32 0))
  %tmp60 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr61 = getelementptr inbounds %LinkedList, %LinkedList* %tmp60, i32 0, i32 0
  %vtable62 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr61
  %mptr63 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable62, i32 0, i32 4
  %method64 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr63
  call void %method64(%LinkedList* %tmp60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.41, i32 0, i32 0))
  %tmp65 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr66 = getelementptr inbounds %LinkedList, %LinkedList* %tmp65, i32 0, i32 0
  %vtable67 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr66
  %mptr68 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable67, i32 0, i32 4
  %method69 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr68
  call void %method69(%LinkedList* %tmp65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.42, i32 0, i32 0))
  %tmp70 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr71 = getelementptr inbounds %LinkedList, %LinkedList* %tmp70, i32 0, i32 0
  %vtable72 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr71
  %mptr73 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable72, i32 0, i32 4
  %method74 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr73
  call void %method74(%LinkedList* %tmp70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.43, i32 0, i32 0))
  %tmp75 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr76 = getelementptr inbounds %LinkedList, %LinkedList* %tmp75, i32 0, i32 0
  %vtable77 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr76
  %mptr78 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable77, i32 0, i32 4
  %method79 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr78
  call void %method79(%LinkedList* %tmp75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.44, i32 0, i32 0))
  %tmp80 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr81 = getelementptr inbounds %LinkedList, %LinkedList* %tmp80, i32 0, i32 0
  %vtable82 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr81
  %mptr83 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable82, i32 0, i32 4
  %method84 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr83
  call void %method84(%LinkedList* %tmp80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.45, i32 0, i32 0))
  %tmp85 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr86 = getelementptr inbounds %LinkedList, %LinkedList* %tmp85, i32 0, i32 0
  %vtable87 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr86
  %mptr88 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable87, i32 0, i32 4
  %method89 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr88
  call void %method89(%LinkedList* %tmp85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.46, i32 0, i32 0))
  %tmp90 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr91 = getelementptr inbounds %LinkedList, %LinkedList* %tmp90, i32 0, i32 0
  %vtable92 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr91
  %mptr93 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable92, i32 0, i32 4
  %method94 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr93
  call void %method94(%LinkedList* %tmp90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.47, i32 0, i32 0))
  %tmp95 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr96 = getelementptr inbounds %LinkedList, %LinkedList* %tmp95, i32 0, i32 0
  %vtable97 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr96
  %mptr98 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable97, i32 0, i32 4
  %method99 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr98
  call void %method99(%LinkedList* %tmp95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.48, i32 0, i32 0))
  %tmp100 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr101 = getelementptr inbounds %LinkedList, %LinkedList* %tmp100, i32 0, i32 0
  %vtable102 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr101
  %mptr103 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable102, i32 0, i32 4
  %method104 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr103
  call void %method104(%LinkedList* %tmp100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.49, i32 0, i32 0))
  %tmp105 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr106 = getelementptr inbounds %LinkedList, %LinkedList* %tmp105, i32 0, i32 0
  %vtable107 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr106
  %mptr108 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable107, i32 0, i32 4
  %method109 = load void (%LinkedList*, i8*)*, void (%LinkedList*, i8*)** %mptr108
  call void %method109(%LinkedList* %tmp105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.50, i32 0, i32 0))
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.51, i32 0, i32 0))
  %tmp110 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr111 = getelementptr inbounds %LinkedList, %LinkedList* %tmp110, i32 0, i32 0
  %vtable112 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr111
  %mptr113 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable112, i32 0, i32 5
  %method114 = load void (%LinkedList*)*, void (%LinkedList*)** %mptr113
  call void %method114(%LinkedList* %tmp110)
  %printf115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.52, i32 0, i32 0))
  %tmp116 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr117 = getelementptr inbounds %LinkedList, %LinkedList* %tmp116, i32 0, i32 0
  %vtable118 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr117
  %mptr119 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable118, i32 0, i32 1
  %method120 = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr119
  call void %method120(%LinkedList* %tmp116, i32 19)
  %tmp121 = load %LinkedList*, %LinkedList** %list
  %vtable_ptr122 = getelementptr inbounds %LinkedList, %LinkedList* %tmp121, i32 0, i32 0
  %vtable123 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr122
  %mptr124 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable123, i32 0, i32 5
  %method125 = load void (%LinkedList*)*, void (%LinkedList*)** %mptr124
  call void %method125(%LinkedList* %tmp121)
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

declare noalias i8* @malloc(i32)
