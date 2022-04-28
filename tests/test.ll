; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Node = type { %Node*, i32 }
%LinkedList = type { i32, %Node* }

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
@fmt.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.19 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define void @NodesetNext(%Node* %objptr, i32 %data) {
entry:
  %objptr1 = alloca %Node*
  store %Node* %objptr, %Node** %objptr1
  %data2 = alloca i32
  store i32 %data, i32* %data2
  %tmp = load %Node*, %Node** %objptr1
  %data3 = load i32, i32* %data2
  %Node_constr_result = call %Node* @Node(i32 %data3)
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 0
  store %Node* %Node_constr_result, %Node** %field
  ret void
}

define void @LinkedListinsertElem(%LinkedList* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %elem2 = alloca i32
  store i32 %elem, i32* %elem2
  %i = alloca i32
  %curr = alloca %Node*
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 0
  %size = load i32, i32* %field
  %tmp3 = icmp eq i32 %size, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %merge19, %then
  %tmp22 = load %LinkedList*, %LinkedList** %objptr1
  %tmp23 = load %LinkedList*, %LinkedList** %objptr1
  %field24 = getelementptr inbounds %LinkedList, %LinkedList* %tmp23, i32 0, i32 0
  %size25 = load i32, i32* %field24
  %tmp26 = add i32 %size25, 1
  %field27 = getelementptr inbounds %LinkedList, %LinkedList* %tmp22, i32 0, i32 0
  store i32 %tmp26, i32* %field27
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1
  %elem5 = load i32, i32* %elem2
  %Node_constr_result = call %Node* @Node(i32 %elem5)
  %field6 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 1
  store %Node* %Node_constr_result, %Node** %field6
  br label %merge

else:                                             ; preds = %entry
  %tmp7 = load %LinkedList*, %LinkedList** %objptr1
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp7, i32 0, i32 1
  %first = load %Node*, %Node** %field8
  store %Node* %first, %Node** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %else
  %i13 = load i32, i32* %i
  %tmp14 = load %LinkedList*, %LinkedList** %objptr1
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 0
  %size16 = load i32, i32* %field15
  %tmp17 = sub i32 %size16, 1
  %tmp18 = icmp slt i32 %i13, %tmp17
  br i1 %tmp18, label %while_body, label %merge19

while_body:                                       ; preds = %while
  %tmp9 = load %Node*, %Node** %curr
  %field10 = getelementptr inbounds %Node, %Node* %tmp9, i32 0, i32 0
  %next = load %Node*, %Node** %field10
  store %Node* %next, %Node** %curr
  %i11 = load i32, i32* %i
  %tmp12 = add i32 %i11, 1
  store i32 %tmp12, i32* %i
  br label %while

merge19:                                          ; preds = %while
  %tmp20 = load %Node*, %Node** %curr
  %elem21 = load i32, i32* %elem2
  call void @NodesetNext(%Node* %tmp20, i32 %elem21)
  br label %merge
}

define void @LinkedListprintLinkedList(%LinkedList* %objptr) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %curr = alloca %Node*
  %i = alloca i32
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
  %first = load %Node*, %Node** %field
  store %Node* %first, %Node** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1
  %field10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %size = load i32, i32* %field10
  %tmp11 = icmp slt i32 %i8, %size
  br i1 %tmp11, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp2 = load %Node*, %Node** %curr
  %field3 = getelementptr inbounds %Node, %Node* %tmp2, i32 0, i32 1
  %data = load i32, i32* %field3
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.12, i32 0, i32 0), i32 %data)
  %tmp4 = load %Node*, %Node** %curr
  %field5 = getelementptr inbounds %Node, %Node* %tmp4, i32 0, i32 0
  %next = load %Node*, %Node** %field5
  store %Node* %next, %Node** %curr
  %i6 = load i32, i32* %i
  %tmp7 = add i32 %i6, 1
  store i32 %tmp7, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret void
}

define i32 @LinkedListgetElem(%LinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %index2 = alloca i32
  store i32 %index, i32* %index2
  %curr = alloca %Node*
  %i = alloca i32
  %tmp = load %LinkedList*, %LinkedList** %objptr1
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
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
  %field4 = getelementptr inbounds %Node, %Node* %tmp3, i32 0, i32 0
  %next = load %Node*, %Node** %field4
  store %Node* %next, %Node** %curr
  %i5 = load i32, i32* %i
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i
  br label %while

merge:                                            ; preds = %while
  %tmp10 = load %Node*, %Node** %curr
  %field11 = getelementptr inbounds %Node, %Node* %tmp10, i32 0, i32 1
  %data = load i32, i32* %field11
  ret i32 %data
}

define i32 @Mainmain() {
entry:
  %list = alloca %LinkedList*
  %LinkedList_constr_result = call %LinkedList* @LinkedList()
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %list
  %tmp = load %LinkedList*, %LinkedList** %list
  call void @LinkedListinsertElem(%LinkedList* %tmp, i32 10)
  %tmp1 = load %LinkedList*, %LinkedList** %list
  call void @LinkedListinsertElem(%LinkedList* %tmp1, i32 20)
  %tmp2 = load %LinkedList*, %LinkedList** %list
  call void @LinkedListprintLinkedList(%LinkedList* %tmp2)
  %tmp3 = load %LinkedList*, %LinkedList** %list
  %getElem_result = call i32 @LinkedListgetElem(%LinkedList* %tmp3, i32 1)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.18, i32 0, i32 0), i32 %getElem_result)
  ret i32 0
}

define %Node* @Node(i32 %data) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Node* getelementptr (%Node, %Node* null, i32 1) to i32))
  %Node = bitcast i8* %malloccall to %Node*
  %field = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 0
  store %Node* null, %Node** %field
  %field1 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store i32 0, i32* %field1
  %data2 = alloca i32
  store i32 %data, i32* %data2
  %data3 = load i32, i32* %data2
  %field4 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store i32 %data3, i32* %field4
  ret %Node* %Node
}

define %LinkedList* @LinkedList() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%LinkedList* getelementptr (%LinkedList, %LinkedList* null, i32 1) to i32))
  %LinkedList = bitcast i8* %malloccall to %LinkedList*
  %field = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 0
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 1
  store %Node* null, %Node** %field1
  %field2 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 0
  store i32 0, i32* %field2
  ret %LinkedList* %LinkedList
}

declare noalias i8* @malloc(i32)
