; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Node = type { %Node*, i8* }
%LinkedList = type { i32, %Node* }

@main_ptr = global i32 ()* @main
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

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define void @NodesetNext(%Node* %objptr, i8* %data) {
entry:
  %objptr1 = alloca %Node*, align 8
  store %Node* %objptr, %Node** %objptr1, align 8
  %data2 = alloca i8*, align 8
  store i8* %data, i8** %data2, align 8
  %tmp = load %Node*, %Node** %objptr1, align 8
  %data3 = load i8*, i8** %data2, align 8
  %Node_constr_result = call %Node* @Node(i8* %data3)
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 0
  store %Node* %Node_constr_result, %Node** %field, align 8
  ret void
}

define void @NodesetNextNode(%Node* %objptr, %Node* %node) {
entry:
  %objptr1 = alloca %Node*, align 8
  store %Node* %objptr, %Node** %objptr1, align 8
  %node2 = alloca %Node*, align 8
  store %Node* %node, %Node** %node2, align 8
  %tmp = load %Node*, %Node** %objptr1, align 8
  %node3 = load %Node*, %Node** %node2, align 8
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 0
  store %Node* %node3, %Node** %field, align 8
  ret void
}

define void @LinkedListinsertElem(%LinkedList* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %elem2 = alloca i8*, align 8
  store i8* %elem, i8** %elem2, align 8
  %i = alloca i32, align 4
  %curr = alloca %Node*, align 8
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 0
  %size = load i32, i32* %field, align 4
  %tmp3 = icmp eq i32 %size, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %merge19, %then
  %tmp22 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp23 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field24 = getelementptr inbounds %LinkedList, %LinkedList* %tmp23, i32 0, i32 0
  %size25 = load i32, i32* %field24, align 4
  %tmp26 = add i32 %size25, 1
  %field27 = getelementptr inbounds %LinkedList, %LinkedList* %tmp22, i32 0, i32 0
  store i32 %tmp26, i32* %field27, align 4
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %elem5 = load i8*, i8** %elem2, align 8
  %Node_constr_result = call %Node* @Node(i8* %elem5)
  %field6 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 1
  store %Node* %Node_constr_result, %Node** %field6, align 8
  br label %merge

else:                                             ; preds = %entry
  %tmp7 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp7, i32 0, i32 1
  %first = load %Node*, %Node** %field8, align 8
  store %Node* %first, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %else
  %i13 = load i32, i32* %i, align 4
  %tmp14 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 0
  %size16 = load i32, i32* %field15, align 4
  %tmp17 = sub i32 %size16, 1
  %tmp18 = icmp slt i32 %i13, %tmp17
  br i1 %tmp18, label %while_body, label %merge19

while_body:                                       ; preds = %while
  %tmp9 = load %Node*, %Node** %curr, align 8
  %field10 = getelementptr inbounds %Node, %Node* %tmp9, i32 0, i32 0
  %next = load %Node*, %Node** %field10, align 8
  store %Node* %next, %Node** %curr, align 8
  %i11 = load i32, i32* %i, align 4
  %tmp12 = add i32 %i11, 1
  store i32 %tmp12, i32* %i, align 4
  br label %while

merge19:                                          ; preds = %while
  %tmp20 = load %Node*, %Node** %curr, align 8
  %elem21 = load i8*, i8** %elem2, align 8
  call void @NodesetNext(%Node* %tmp20, i8* %elem21)
  br label %merge
}

define i32 @LinkedListgetSize(%LinkedList* %objptr) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 0
  %size = load i32, i32* %field, align 4
  ret i32 %size
}

define void @LinkedListprintLinkedList(%LinkedList* %objptr) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %curr = alloca %Node*, align 8
  %i = alloca i32, align 4
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
  %first = load %Node*, %Node** %field, align 8
  store %Node* %first, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i, align 4
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %size = load i32, i32* %field10, align 4
  %tmp11 = icmp slt i32 %i8, %size
  br i1 %tmp11, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp2 = load %Node*, %Node** %curr, align 8
  %field3 = getelementptr inbounds %Node, %Node* %tmp2, i32 0, i32 1
  %data = load i8*, i8** %field3, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.20, i32 0, i32 0), i8* %data)
  %tmp4 = load %Node*, %Node** %curr, align 8
  %field5 = getelementptr inbounds %Node, %Node* %tmp4, i32 0, i32 0
  %next = load %Node*, %Node** %field5, align 8
  store %Node* %next, %Node** %curr, align 8
  %i6 = load i32, i32* %i, align 4
  %tmp7 = add i32 %i6, 1
  store i32 %tmp7, i32* %i, align 4
  br label %while

merge:                                            ; preds = %while
  ret void
}

define void @LinkedListdeleteElem(%LinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %index2 = alloca i32, align 4
  store i32 %index, i32* %index2, align 4
  %prev = alloca %Node*, align 8
  %curr = alloca %Node*, align 8
  %temp = alloca %Node*, align 8
  %i = alloca i32, align 4
  %index3 = load i32, i32* %index2, align 4
  %tmp = icmp eq i32 %index3, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else
  %tmp14 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 1
  %first16 = load %Node*, %Node** %field15, align 8
  store %Node* %first16, %Node** %prev, align 8
  %tmp17 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field18 = getelementptr inbounds %LinkedList, %LinkedList* %tmp17, i32 0, i32 1
  %first19 = load %Node*, %Node** %field18, align 8
  store %Node* %first19, %Node** %temp, align 8
  %tmp20 = load %Node*, %Node** %temp, align 8
  %field21 = getelementptr inbounds %Node, %Node* %tmp20, i32 0, i32 0
  %next22 = load %Node*, %Node** %field21, align 8
  store %Node* %next22, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 1
  %first = load %Node*, %Node** %field, align 8
  store %Node* %first, %Node** %temp, align 8
  %tmp5 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp6 = load %Node*, %Node** %temp, align 8
  %field7 = getelementptr inbounds %Node, %Node* %tmp6, i32 0, i32 0
  %next = load %Node*, %Node** %field7, align 8
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp5, i32 0, i32 1
  store %Node* %next, %Node** %field8, align 8
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp10 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field11 = getelementptr inbounds %LinkedList, %LinkedList* %tmp10, i32 0, i32 0
  %size = load i32, i32* %field11, align 4
  %tmp12 = sub i32 %size, 1
  %field13 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  store i32 %tmp12, i32* %field13, align 4
  ret void

else:                                             ; preds = %entry
  br label %merge

while:                                            ; preds = %merge27, %merge
  %i47 = load i32, i32* %i, align 4
  %tmp48 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field49 = getelementptr inbounds %LinkedList, %LinkedList* %tmp48, i32 0, i32 0
  %size50 = load i32, i32* %field49, align 4
  %tmp51 = icmp slt i32 %i47, %size50
  br i1 %tmp51, label %while_body, label %merge52

while_body:                                       ; preds = %while
  %i23 = load i32, i32* %i, align 4
  %index24 = load i32, i32* %index2, align 4
  %tmp25 = sub i32 %index24, 1
  %tmp26 = icmp eq i32 %i23, %tmp25
  br i1 %tmp26, label %then28, label %else40

merge27:                                          ; preds = %else40
  %i45 = load i32, i32* %i, align 4
  %tmp46 = add i32 %i45, 1
  store i32 %tmp46, i32* %i, align 4
  br label %while

then28:                                           ; preds = %while_body
  %tmp29 = load %Node*, %Node** %curr, align 8
  %field30 = getelementptr inbounds %Node, %Node* %tmp29, i32 0, i32 0
  %next31 = load %Node*, %Node** %field30, align 8
  store %Node* %next31, %Node** %temp, align 8
  %tmp32 = load %Node*, %Node** %prev, align 8
  %temp33 = load %Node*, %Node** %temp, align 8
  call void @NodesetNextNode(%Node* %tmp32, %Node* %temp33)
  %tmp34 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp35 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field36 = getelementptr inbounds %LinkedList, %LinkedList* %tmp35, i32 0, i32 0
  %size37 = load i32, i32* %field36, align 4
  %tmp38 = sub i32 %size37, 1
  %field39 = getelementptr inbounds %LinkedList, %LinkedList* %tmp34, i32 0, i32 0
  store i32 %tmp38, i32* %field39, align 4
  ret void

else40:                                           ; preds = %while_body
  %curr41 = load %Node*, %Node** %curr, align 8
  store %Node* %curr41, %Node** %prev, align 8
  %tmp42 = load %Node*, %Node** %curr, align 8
  %field43 = getelementptr inbounds %Node, %Node* %tmp42, i32 0, i32 0
  %next44 = load %Node*, %Node** %field43, align 8
  store %Node* %next44, %Node** %curr, align 8
  br label %merge27

merge52:                                          ; preds = %while
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.23, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.24, i32 0, i32 0))
  ret void
}

define i8* @LinkedListgetElem(%LinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %index2 = alloca i32, align 4
  store i32 %index, i32* %index2, align 4
  %curr = alloca %Node*, align 8
  %i = alloca i32, align 4
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
  %first = load %Node*, %Node** %field, align 8
  store %Node* %first, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %i7 = load i32, i32* %i, align 4
  %index8 = load i32, i32* %index2, align 4
  %tmp9 = icmp slt i32 %i7, %index8
  br i1 %tmp9, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp3 = load %Node*, %Node** %curr, align 8
  %field4 = getelementptr inbounds %Node, %Node* %tmp3, i32 0, i32 0
  %next = load %Node*, %Node** %field4, align 8
  store %Node* %next, %Node** %curr, align 8
  %i5 = load i32, i32* %i, align 4
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i, align 4
  br label %while

merge:                                            ; preds = %while
  %tmp10 = load %Node*, %Node** %curr, align 8
  %field11 = getelementptr inbounds %Node, %Node* %tmp10, i32 0, i32 1
  %data = load i8*, i8** %field11, align 8
  ret i8* %data
}

define i32 @Mainmain() {
entry:
  %list = alloca %LinkedList*, align 8
  %LinkedList_constr_result = call %LinkedList* @LinkedList()
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %list, align 8
  %tmp = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.31, i32 0, i32 0))
  %tmp1 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.32, i32 0, i32 0))
  %tmp2 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.33, i32 0, i32 0))
  %tmp3 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.34, i32 0, i32 0))
  %tmp4 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.35, i32 0, i32 0))
  %tmp5 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.36, i32 0, i32 0))
  %tmp6 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.37, i32 0, i32 0))
  %tmp7 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.38, i32 0, i32 0))
  %tmp8 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.39, i32 0, i32 0))
  %tmp9 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.40, i32 0, i32 0))
  %tmp10 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.41, i32 0, i32 0))
  %tmp11 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.42, i32 0, i32 0))
  %tmp12 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.43, i32 0, i32 0))
  %tmp13 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.44, i32 0, i32 0))
  %tmp14 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.45, i32 0, i32 0))
  %tmp15 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.46, i32 0, i32 0))
  %tmp16 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.47, i32 0, i32 0))
  %tmp17 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.48, i32 0, i32 0))
  %tmp18 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.49, i32 0, i32 0))
  %tmp19 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListinsertElem(%LinkedList* %tmp19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.50, i32 0, i32 0))
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.51, i32 0, i32 0))
  %tmp20 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListprintLinkedList(%LinkedList* %tmp20)
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.52, i32 0, i32 0))
  %tmp22 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListdeleteElem(%LinkedList* %tmp22, i32 19)
  %tmp23 = load %LinkedList*, %LinkedList** %list, align 8
  call void @LinkedListprintLinkedList(%LinkedList* %tmp23)
  ret i32 0
}

define %Node* @Node(i8* %data) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Node* getelementptr (%Node, %Node* null, i32 1) to i32))
  %Node = bitcast i8* %malloccall to %Node*
  %field = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 0
  store %Node* null, %Node** %field, align 8
  %field1 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str, i32 0, i32 0), i8** %field1, align 8
  %data2 = alloca i8*, align 8
  store i8* %data, i8** %data2, align 8
  %data3 = load i8*, i8** %data2, align 8
  %field4 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store i8* %data3, i8** %field4, align 8
  ret %Node* %Node
}

define %LinkedList* @LinkedList() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%LinkedList* getelementptr (%LinkedList, %LinkedList* null, i32 1) to i32))
  %LinkedList = bitcast i8* %malloccall to %LinkedList*
  %field = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 0
  store i32 0, i32* %field, align 4
  %field1 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 1
  store %Node* null, %Node** %field1, align 8
  %field2 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 0
  store i32 0, i32* %field2, align 4
  ret %LinkedList* %LinkedList
}

declare noalias i8* @malloc(i32)
