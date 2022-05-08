; ModuleID = 'MicroOOP'
source_filename = "MicroOOP"

%Node_vtable = type { %Node* (i32)*, void (%Node*, i32)*, void (%Node*, %Node*)* }
%Node = type { %Node_vtable*, %Node*, i32 }
%LinkedList_vtable = type { %LinkedList* ()*, void (%LinkedList*, i32)*, i32 (%LinkedList*, i32)*, i32 (%LinkedList*)*, void (%LinkedList*, i32)*, void (%LinkedList*)* }
%LinkedList = type { %LinkedList_vtable*, i32, %Node* }
%StringNode_vtable = type { %StringNode* (i8*)*, void (%StringNode*, i8*)*, void (%StringNode*, %StringNode*)* }
%StringNode = type { %StringNode_vtable*, %StringNode*, i8* }
%StringLinkedList_vtable = type { %StringLinkedList* ()*, void (%StringLinkedList*, i32)*, i8* (%StringLinkedList*, i32)*, i32 (%StringLinkedList*)*, void (%StringLinkedList*, i8*)*, void (%StringLinkedList*)* }
%StringLinkedList = type { %StringLinkedList_vtable*, i32, %StringNode* }
%Stack_vtable = type { %Stack* ()*, void (%Stack*)*, void (%Stack*)*, void (%Stack*, i32)*, i32 (%Stack*)* }
%Stack = type { %Stack_vtable*, %LinkedList* }
%StringStack_vtable = type { %StringStack* ()*, void (%StringStack*)*, void (%StringStack*)*, void (%StringStack*, i8*)*, i8* (%StringStack*)* }
%StringStack = type { %StringStack_vtable*, %StringLinkedList* }
%Queue_vtable = type { %Queue* ()*, i32 (%Queue*)*, void (%Queue*)*, void (%Queue*, i32)* }
%Queue = type { %Queue_vtable*, %LinkedList* }
%StringQueue_vtable = type { %StringQueue* ()*, i8* (%StringQueue*)*, void (%StringQueue*)*, void (%StringQueue*, i8*)* }
%StringQueue = type { %StringQueue_vtable*, %StringLinkedList* }
%Main_vtable = type { i32 ()* }

@main_ptr = global i32 ()* @main
@Node_vtable = global %Node_vtable { %Node* (i32)* @Node, void (%Node*, i32)* @NodesetNext, void (%Node*, %Node*)* @NodesetNextNode }
@LinkedList_vtable = global %LinkedList_vtable { %LinkedList* ()* @LinkedList, void (%LinkedList*, i32)* @LinkedListdeleteElem, i32 (%LinkedList*, i32)* @LinkedListgetElem, i32 (%LinkedList*)* @LinkedListgetSize, void (%LinkedList*, i32)* @LinkedListinsertElem, void (%LinkedList*)* @LinkedListprintLinkedList }
@StringNode_vtable = global %StringNode_vtable { %StringNode* (i8*)* @StringNode, void (%StringNode*, i8*)* @StringNodesetNext, void (%StringNode*, %StringNode*)* @StringNodesetNextNode }
@StringLinkedList_vtable = global %StringLinkedList_vtable { %StringLinkedList* ()* @StringLinkedList, void (%StringLinkedList*, i32)* @StringLinkedListdeleteElem, i8* (%StringLinkedList*, i32)* @StringLinkedListgetElem, i32 (%StringLinkedList*)* @StringLinkedListgetSize, void (%StringLinkedList*, i8*)* @StringLinkedListinsertElem, void (%StringLinkedList*)* @StringLinkedListprintStringLinkedList }
@Stack_vtable = global %Stack_vtable { %Stack* ()* @Stack, void (%Stack*)* @Stackpop, void (%Stack*)* @StackprintStack, void (%Stack*, i32)* @Stackpush, i32 (%Stack*)* @Stacktop }
@StringStack_vtable = global %StringStack_vtable { %StringStack* ()* @StringStack, void (%StringStack*)* @StringStackpop, void (%StringStack*)* @StringStackprintStack, void (%StringStack*, i8*)* @StringStackpush, i8* (%StringStack*)* @StringStacktop }
@Queue_vtable = global %Queue_vtable { %Queue* ()* @Queue, i32 (%Queue*)* @Queuedequeue, void (%Queue*)* @QueueprintQueue, void (%Queue*, i32)* @Queuequeue }
@StringQueue_vtable = global %StringQueue_vtable { %StringQueue* ()* @StringQueue, i8* (%StringQueue*)* @StringQueuedequeue, void (%StringQueue*)* @StringQueueprintQueue, void (%StringQueue*, i8*)* @StringQueuequeue }
@Main_vtable = global %Main_vtable { i32 ()* @Mainmain }
@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.1 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
@fmt.30 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.31 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.33 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.34 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.35 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.36 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.37 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.38 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.39 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.40 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.42 = private unnamed_addr constant [23 x i8] c"Element does not exist\00", align 1
@fmt.43 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.44 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.46 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.47 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.48 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.49 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.50 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.51 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.52 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.53 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.54 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.55 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.56 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.57 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.58 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.59 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.60 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.61 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.62 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.63 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.64 = private unnamed_addr constant [23 x i8] c"Element does not exist\00", align 1
@fmt.65 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.66 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.68 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.69 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.70 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.71 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.72 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.73 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.74 = private unnamed_addr constant [42 x i8] c"Stack is empty, no element to be returned\00", align 1
@fmt.75 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.76 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.77 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.78 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.79 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.80 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.81 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.82 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.83 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.84 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.85 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.86 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.87 = private unnamed_addr constant [42 x i8] c"Stack is empty, no element to be returned\00", align 1
@str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fmt.89 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.90 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.91 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.92 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.93 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.94 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.95 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.96 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.97 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.98 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.99 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.100 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.101 = private unnamed_addr constant [42 x i8] c"Queue is empty, no element to be dequeued\00", align 1
@fmt.102 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.103 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.104 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.105 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.106 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.107 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.108 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.109 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.110 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.111 = private unnamed_addr constant [42 x i8] c"Queue is empty, no element to be dequeued\00", align 1
@str.112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fmt.113 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.114 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.115 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.116 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.117 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.118 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.119 = private unnamed_addr constant [31 x i8] c"Leclerc    86 Best Best Driver\00", align 1
@str.120 = private unnamed_addr constant [28 x i8] c"Verstappen 59 Bester Driver\00", align 1
@str.121 = private unnamed_addr constant [14 x i8] c"Perez      54\00", align 1
@str.122 = private unnamed_addr constant [14 x i8] c"Russell    49\00", align 1
@str.123 = private unnamed_addr constant [14 x i8] c"Sainz      38\00", align 1
@str.124 = private unnamed_addr constant [14 x i8] c"Norris     35\00", align 1
@str.125 = private unnamed_addr constant [14 x i8] c"Hamilton   28\00", align 1
@str.126 = private unnamed_addr constant [14 x i8] c"Bottas     24\00", align 1
@str.127 = private unnamed_addr constant [14 x i8] c"Ocon       20\00", align 1
@str.128 = private unnamed_addr constant [14 x i8] c"Magnussen  15\00", align 1
@str.129 = private unnamed_addr constant [14 x i8] c"Ricciardo  11\00", align 1
@str.130 = private unnamed_addr constant [14 x i8] c"Tsunoda    10\00", align 1
@str.131 = private unnamed_addr constant [14 x i8] c"Gasly       6\00", align 1
@str.132 = private unnamed_addr constant [14 x i8] c"Vettel      4\00", align 1
@str.133 = private unnamed_addr constant [14 x i8] c"Alonso      2\00", align 1
@str.134 = private unnamed_addr constant [14 x i8] c"Zhou        1\00", align 1
@str.135 = private unnamed_addr constant [14 x i8] c"Stroll      1\00", align 1
@str.136 = private unnamed_addr constant [14 x i8] c"Albon       1\00", align 1
@str.137 = private unnamed_addr constant [14 x i8] c"Shumacher   0\00", align 1
@str.138 = private unnamed_addr constant [14 x i8] c"Latifi      0\00", align 1
@str.139 = private unnamed_addr constant [37 x i8] c"Current Championship Points Rankings\00", align 1
@str.140 = private unnamed_addr constant [14 x i8] c"Remove Driver\00", align 1

declare i32 @printf(i8*, ...)

define void @NodesetNext(%Node* %objptr, i32 %data) {
entry:
  %objptr1 = alloca %Node*
  store %Node* %objptr, %Node** %objptr1
  %data2 = alloca i32
  store i32 %data, i32* %data2
  %tmp = load %Node*, %Node** %objptr1
  %mptr = load %Node* (i32)*, %Node* (i32)** getelementptr inbounds (%Node_vtable, %Node_vtable* @Node_vtable, i32 0, i32 0)
  %data3 = load i32, i32* %data2
  %Node_constr_result = call %Node* %mptr(i32 %data3)
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

define void @LinkedListinsertElem(%LinkedList* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %LinkedList*
  store %LinkedList* %objptr, %LinkedList** %objptr1
  %elem2 = alloca i32
  store i32 %elem, i32* %elem2
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
  %mptr = load %Node* (i32)*, %Node* (i32)** getelementptr inbounds (%Node_vtable, %Node_vtable* @Node_vtable, i32 0, i32 0)
  %elem5 = load i32, i32* %elem2
  %Node_constr_result = call %Node* %mptr(i32 %elem5)
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
  %method = load void (%Node*, i32)*, void (%Node*, i32)** %mptr21
  %elem22 = load i32, i32* %elem2
  call void %method(%Node* %tmp20, i32 %elem22)
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
  %data = load i32, i32* %field3
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.36, i32 0, i32 0), i32 %data)
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
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.41, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.42, i32 0, i32 0))
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
  %data = load i32, i32* %field11
  ret i32 %data
}

define void @StringNodesetNext(%StringNode* %objptr, i8* %data) {
entry:
  %objptr1 = alloca %StringNode*
  store %StringNode* %objptr, %StringNode** %objptr1
  %data2 = alloca i8*
  store i8* %data, i8** %data2
  %tmp = load %StringNode*, %StringNode** %objptr1
  %mptr = load %StringNode* (i8*)*, %StringNode* (i8*)** getelementptr inbounds (%StringNode_vtable, %StringNode_vtable* @StringNode_vtable, i32 0, i32 0)
  %data3 = load i8*, i8** %data2
  %StringNode_constr_result = call %StringNode* %mptr(i8* %data3)
  %field = getelementptr inbounds %StringNode, %StringNode* %tmp, i32 0, i32 1
  store %StringNode* %StringNode_constr_result, %StringNode** %field
  ret void
}

define void @StringNodesetNextNode(%StringNode* %objptr, %StringNode* %node) {
entry:
  %objptr1 = alloca %StringNode*
  store %StringNode* %objptr, %StringNode** %objptr1
  %node2 = alloca %StringNode*
  store %StringNode* %node, %StringNode** %node2
  %tmp = load %StringNode*, %StringNode** %objptr1
  %node3 = load %StringNode*, %StringNode** %node2
  %field = getelementptr inbounds %StringNode, %StringNode* %tmp, i32 0, i32 1
  store %StringNode* %node3, %StringNode** %field
  ret void
}

define void @StringLinkedListinsertElem(%StringLinkedList* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %StringLinkedList*
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1
  %elem2 = alloca i8*
  store i8* %elem, i8** %elem2
  %i = alloca i32
  %curr = alloca %StringNode*
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field
  %tmp3 = icmp eq i32 %size, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %merge19, %then
  %tmp23 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %tmp24 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field25 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp24, i32 0, i32 1
  %size26 = load i32, i32* %field25
  %tmp27 = add i32 %size26, 1
  %field28 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp23, i32 0, i32 1
  store i32 %tmp27, i32* %field28
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %mptr = load %StringNode* (i8*)*, %StringNode* (i8*)** getelementptr inbounds (%StringNode_vtable, %StringNode_vtable* @StringNode_vtable, i32 0, i32 0)
  %elem5 = load i8*, i8** %elem2
  %StringNode_constr_result = call %StringNode* %mptr(i8* %elem5)
  %field6 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 2
  store %StringNode* %StringNode_constr_result, %StringNode** %field6
  br label %merge

else:                                             ; preds = %entry
  %tmp7 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field8 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp7, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field8
  store %StringNode* %first, %StringNode** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %else
  %i13 = load i32, i32* %i
  %tmp14 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field15 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp14, i32 0, i32 1
  %size16 = load i32, i32* %field15
  %tmp17 = sub i32 %size16, 1
  %tmp18 = icmp slt i32 %i13, %tmp17
  br i1 %tmp18, label %while_body, label %merge19

while_body:                                       ; preds = %while
  %tmp9 = load %StringNode*, %StringNode** %curr
  %field10 = getelementptr inbounds %StringNode, %StringNode* %tmp9, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field10
  store %StringNode* %next, %StringNode** %curr
  %i11 = load i32, i32* %i
  %tmp12 = add i32 %i11, 1
  store i32 %tmp12, i32* %i
  br label %while

merge19:                                          ; preds = %while
  %tmp20 = load %StringNode*, %StringNode** %curr
  %vtable_ptr = getelementptr inbounds %StringNode, %StringNode* %tmp20, i32 0, i32 0
  %vtable = load %StringNode_vtable*, %StringNode_vtable** %vtable_ptr
  %mptr21 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %vtable, i32 0, i32 1
  %method = load void (%StringNode*, i8*)*, void (%StringNode*, i8*)** %mptr21
  %elem22 = load i8*, i8** %elem2
  call void %method(%StringNode* %tmp20, i8* %elem22)
  br label %merge
}

define i32 @StringLinkedListgetSize(%StringLinkedList* %objptr) {
entry:
  %objptr1 = alloca %StringLinkedList*
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field
  ret i32 %size
}

define void @StringLinkedListprintStringLinkedList(%StringLinkedList* %objptr) {
entry:
  %objptr1 = alloca %StringLinkedList*
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1
  %curr = alloca %StringNode*
  %i = alloca i32
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field
  store %StringNode* %first, %StringNode** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 1
  %size = load i32, i32* %field10
  %tmp11 = icmp slt i32 %i8, %size
  br i1 %tmp11, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp2 = load %StringNode*, %StringNode** %curr
  %field3 = getelementptr inbounds %StringNode, %StringNode* %tmp2, i32 0, i32 2
  %data = load i8*, i8** %field3
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.60, i32 0, i32 0), i8* %data)
  %tmp4 = load %StringNode*, %StringNode** %curr
  %field5 = getelementptr inbounds %StringNode, %StringNode* %tmp4, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field5
  store %StringNode* %next, %StringNode** %curr
  %i6 = load i32, i32* %i
  %tmp7 = add i32 %i6, 1
  store i32 %tmp7, i32* %i
  br label %while

merge:                                            ; preds = %while
  ret void
}

define void @StringLinkedListdeleteElem(%StringLinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %StringLinkedList*
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1
  %index2 = alloca i32
  store i32 %index, i32* %index2
  %prev = alloca %StringNode*
  %curr = alloca %StringNode*
  %temp = alloca %StringNode*
  %i = alloca i32
  %index3 = load i32, i32* %index2
  %tmp = icmp eq i32 %index3, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else
  %tmp14 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field15 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp14, i32 0, i32 2
  %first16 = load %StringNode*, %StringNode** %field15
  store %StringNode* %first16, %StringNode** %prev
  %tmp17 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field18 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp17, i32 0, i32 2
  %first19 = load %StringNode*, %StringNode** %field18
  store %StringNode* %first19, %StringNode** %temp
  %tmp20 = load %StringNode*, %StringNode** %temp
  %field21 = getelementptr inbounds %StringNode, %StringNode* %tmp20, i32 0, i32 1
  %next22 = load %StringNode*, %StringNode** %field21
  store %StringNode* %next22, %StringNode** %curr
  store i32 0, i32* %i
  br label %while

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field
  store %StringNode* %first, %StringNode** %temp
  %tmp5 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %tmp6 = load %StringNode*, %StringNode** %temp
  %field7 = getelementptr inbounds %StringNode, %StringNode* %tmp6, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field7
  %field8 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp5, i32 0, i32 2
  store %StringNode* %next, %StringNode** %field8
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %tmp10 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field11 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp10, i32 0, i32 1
  %size = load i32, i32* %field11
  %tmp12 = sub i32 %size, 1
  %field13 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 1
  store i32 %tmp12, i32* %field13
  ret void

else:                                             ; preds = %entry
  br label %merge

while:                                            ; preds = %merge27, %merge
  %i47 = load i32, i32* %i
  %tmp48 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field49 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp48, i32 0, i32 1
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
  %tmp29 = load %StringNode*, %StringNode** %curr
  %field30 = getelementptr inbounds %StringNode, %StringNode* %tmp29, i32 0, i32 1
  %next31 = load %StringNode*, %StringNode** %field30
  store %StringNode* %next31, %StringNode** %temp
  %tmp32 = load %StringNode*, %StringNode** %prev
  %vtable_ptr = getelementptr inbounds %StringNode, %StringNode* %tmp32, i32 0, i32 0
  %vtable = load %StringNode_vtable*, %StringNode_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %vtable, i32 0, i32 2
  %method = load void (%StringNode*, %StringNode*)*, void (%StringNode*, %StringNode*)** %mptr
  %temp33 = load %StringNode*, %StringNode** %temp
  call void %method(%StringNode* %tmp32, %StringNode* %temp33)
  %tmp34 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %tmp35 = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field36 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp35, i32 0, i32 1
  %size37 = load i32, i32* %field36
  %tmp38 = sub i32 %size37, 1
  %field39 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp34, i32 0, i32 1
  store i32 %tmp38, i32* %field39
  ret void

else40:                                           ; preds = %while_body
  %curr41 = load %StringNode*, %StringNode** %curr
  store %StringNode* %curr41, %StringNode** %prev
  %tmp42 = load %StringNode*, %StringNode** %curr
  %field43 = getelementptr inbounds %StringNode, %StringNode* %tmp42, i32 0, i32 1
  %next44 = load %StringNode*, %StringNode** %field43
  store %StringNode* %next44, %StringNode** %curr
  br label %merge27

merge52:                                          ; preds = %while
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.63, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.64, i32 0, i32 0))
  ret void
}

define i8* @StringLinkedListgetElem(%StringLinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %StringLinkedList*
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1
  %index2 = alloca i32
  store i32 %index, i32* %index2
  %curr = alloca %StringNode*
  %i = alloca i32
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field
  store %StringNode* %first, %StringNode** %curr
  store i32 0, i32* %i
  br label %while

while:                                            ; preds = %while_body, %entry
  %i7 = load i32, i32* %i
  %index8 = load i32, i32* %index2
  %tmp9 = icmp slt i32 %i7, %index8
  br i1 %tmp9, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp3 = load %StringNode*, %StringNode** %curr
  %field4 = getelementptr inbounds %StringNode, %StringNode* %tmp3, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field4
  store %StringNode* %next, %StringNode** %curr
  %i5 = load i32, i32* %i
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i
  br label %while

merge:                                            ; preds = %while
  %tmp10 = load %StringNode*, %StringNode** %curr
  %field11 = getelementptr inbounds %StringNode, %StringNode* %tmp10, i32 0, i32 2
  %data = load i8*, i8** %field11
  ret i8* %data
}

define void @Stackpush(%Stack* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %Stack*
  store %Stack* %objptr, %Stack** %objptr1
  %elem2 = alloca i32
  store i32 %elem, i32* %elem2
  %temp = alloca %LinkedList*
  %tmp = load %Stack*, %Stack** %objptr1
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %stack, %LinkedList** %temp
  %tmp3 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp3, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr
  %elem4 = load i32, i32* %elem2
  call void %method(%LinkedList* %tmp3, i32 %elem4)
  ret void
}

define i32 @Stacktop(%Stack* %objptr) {
entry:
  %objptr1 = alloca %Stack*
  store %Stack* %objptr, %Stack** %objptr1
  %poppedElem = alloca i32
  %temp = alloca %LinkedList*
  %tmp = load %Stack*, %Stack** %objptr1
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %stack, %LinkedList** %temp
  %tmp2 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr
  %getSize_result = call i32 %method(%LinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.73, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.74, i32 0, i32 0))
  ret i32 -1

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr5 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr5
  %mptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i32 (%LinkedList*, i32)*, i32 (%LinkedList*, i32)** %mptr7
  %tmp9 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr10
  %mptr12 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr12
  %getSize_result14 = call i32 %method13(%LinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  %getElem_result = call i32 %method8(%LinkedList* %tmp4, i32 %tmp15)
  store i32 %getElem_result, i32* %poppedElem
  %poppedElem16 = load i32, i32* %poppedElem
  ret i32 %poppedElem16

else:                                             ; preds = %entry
  br label %merge
}

define void @Stackpop(%Stack* %objptr) {
entry:
  %objptr1 = alloca %Stack*
  store %Stack* %objptr, %Stack** %objptr1
  %temp = alloca %LinkedList*
  %tmp = load %Stack*, %Stack** %objptr1
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %stack, %LinkedList** %temp
  %tmp2 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr
  %getSize_result = call i32 %method(%LinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else, %then
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr5 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr5
  %mptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable6, i32 0, i32 1
  %method8 = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr7
  %tmp9 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr10
  %mptr12 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr12
  %getSize_result14 = call i32 %method13(%LinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  call void %method8(%LinkedList* %tmp4, i32 %tmp15)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define void @StackprintStack(%Stack* %objptr) {
entry:
  %objptr1 = alloca %Stack*
  store %Stack* %objptr, %Stack** %objptr1
  %temp = alloca %LinkedList*
  %tmp = load %Stack*, %Stack** %objptr1
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %stack, %LinkedList** %temp
  %tmp2 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%LinkedList*)*, void (%LinkedList*)** %mptr
  call void %method(%LinkedList* %tmp2)
  ret void
}

define void @StringStackpush(%StringStack* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %StringStack*
  store %StringStack* %objptr, %StringStack** %objptr1
  %elem2 = alloca i8*
  store i8* %elem, i8** %elem2
  %temp = alloca %StringLinkedList*
  %tmp = load %StringStack*, %StringStack** %objptr1
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %stack, %StringLinkedList** %temp
  %tmp3 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp3, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr
  %elem4 = load i8*, i8** %elem2
  call void %method(%StringLinkedList* %tmp3, i8* %elem4)
  ret void
}

define i8* @StringStacktop(%StringStack* %objptr) {
entry:
  %objptr1 = alloca %StringStack*
  store %StringStack* %objptr, %StringStack** %objptr1
  %poppedElem = alloca i8*
  %temp = alloca %StringLinkedList*
  %tmp = load %StringStack*, %StringStack** %objptr1
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %stack, %StringLinkedList** %temp
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr
  %getSize_result = call i32 %method(%StringLinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.86, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.87, i32 0, i32 0))
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str.88, i32 0, i32 0)

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr5 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr5
  %mptr7 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i8* (%StringLinkedList*, i32)*, i8* (%StringLinkedList*, i32)** %mptr7
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr10
  %mptr12 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr12
  %getSize_result14 = call i32 %method13(%StringLinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  %getElem_result = call i8* %method8(%StringLinkedList* %tmp4, i32 %tmp15)
  store i8* %getElem_result, i8** %poppedElem
  %poppedElem16 = load i8*, i8** %poppedElem
  ret i8* %poppedElem16

else:                                             ; preds = %entry
  br label %merge
}

define void @StringStackpop(%StringStack* %objptr) {
entry:
  %objptr1 = alloca %StringStack*
  store %StringStack* %objptr, %StringStack** %objptr1
  %temp = alloca %StringLinkedList*
  %tmp = load %StringStack*, %StringStack** %objptr1
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %stack, %StringLinkedList** %temp
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr
  %getSize_result = call i32 %method(%StringLinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else, %then
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr5 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr5
  %mptr7 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable6, i32 0, i32 1
  %method8 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr7
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr10
  %mptr12 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr12
  %getSize_result14 = call i32 %method13(%StringLinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  call void %method8(%StringLinkedList* %tmp4, i32 %tmp15)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define void @StringStackprintStack(%StringStack* %objptr) {
entry:
  %objptr1 = alloca %StringStack*
  store %StringStack* %objptr, %StringStack** %objptr1
  %temp = alloca %StringLinkedList*
  %tmp = load %StringStack*, %StringStack** %objptr1
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %stack, %StringLinkedList** %temp
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%StringLinkedList*)*, void (%StringLinkedList*)** %mptr
  call void %method(%StringLinkedList* %tmp2)
  ret void
}

define void @Queuequeue(%Queue* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %Queue*
  store %Queue* %objptr, %Queue** %objptr1
  %elem2 = alloca i32
  store i32 %elem, i32* %elem2
  %temp = alloca %LinkedList*
  %tmp = load %Queue*, %Queue** %objptr1
  %field = getelementptr inbounds %Queue, %Queue* %tmp, i32 0, i32 1
  %queue = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %queue, %LinkedList** %temp
  %tmp3 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp3, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr
  %elem4 = load i32, i32* %elem2
  call void %method(%LinkedList* %tmp3, i32 %elem4)
  ret void
}

define i32 @Queuedequeue(%Queue* %objptr) {
entry:
  %objptr1 = alloca %Queue*
  store %Queue* %objptr, %Queue** %objptr1
  %temp = alloca %LinkedList*
  %dequeuedElem = alloca i32
  %tmp = load %Queue*, %Queue** %objptr1
  %field = getelementptr inbounds %Queue, %Queue* %tmp, i32 0, i32 1
  %queue = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %queue, %LinkedList** %temp
  %tmp2 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr
  %getSize_result = call i32 %method(%LinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.100, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.101, i32 0, i32 0))
  ret i32 -1

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr5 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr5
  %mptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i32 (%LinkedList*, i32)*, i32 (%LinkedList*, i32)** %mptr7
  %getElem_result = call i32 %method8(%LinkedList* %tmp4, i32 0)
  store i32 %getElem_result, i32* %dequeuedElem
  %tmp9 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr10
  %mptr12 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable11, i32 0, i32 1
  %method13 = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr12
  call void %method13(%LinkedList* %tmp9, i32 0)
  %dequeuedElem14 = load i32, i32* %dequeuedElem
  ret i32 %dequeuedElem14

else:                                             ; preds = %entry
  br label %merge
}

define void @QueueprintQueue(%Queue* %objptr) {
entry:
  %objptr1 = alloca %Queue*
  store %Queue* %objptr, %Queue** %objptr1
  %temp = alloca %LinkedList*
  %tmp = load %Queue*, %Queue** %objptr1
  %field = getelementptr inbounds %Queue, %Queue* %tmp, i32 0, i32 1
  %queue = load %LinkedList*, %LinkedList** %field
  store %LinkedList* %queue, %LinkedList** %temp
  %tmp2 = load %LinkedList*, %LinkedList** %temp
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%LinkedList*)*, void (%LinkedList*)** %mptr
  call void %method(%LinkedList* %tmp2)
  ret void
}

define void @StringQueuequeue(%StringQueue* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %StringQueue*
  store %StringQueue* %objptr, %StringQueue** %objptr1
  %elem2 = alloca i8*
  store i8* %elem, i8** %elem2
  %temp = alloca %StringLinkedList*
  %tmp = load %StringQueue*, %StringQueue** %objptr1
  %field = getelementptr inbounds %StringQueue, %StringQueue* %tmp, i32 0, i32 1
  %queue = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %queue, %StringLinkedList** %temp
  %tmp3 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp3, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr
  %elem4 = load i8*, i8** %elem2
  call void %method(%StringLinkedList* %tmp3, i8* %elem4)
  ret void
}

define i8* @StringQueuedequeue(%StringQueue* %objptr) {
entry:
  %objptr1 = alloca %StringQueue*
  store %StringQueue* %objptr, %StringQueue** %objptr1
  %temp = alloca %StringLinkedList*
  %dequeuedElem = alloca i8*
  %tmp = load %StringQueue*, %StringQueue** %objptr1
  %field = getelementptr inbounds %StringQueue, %StringQueue* %tmp, i32 0, i32 1
  %queue = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %queue, %StringLinkedList** %temp
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr
  %getSize_result = call i32 %method(%StringLinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.110, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.111, i32 0, i32 0))
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str.112, i32 0, i32 0)

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr5 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr5
  %mptr7 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i8* (%StringLinkedList*, i32)*, i8* (%StringLinkedList*, i32)** %mptr7
  %getElem_result = call i8* %method8(%StringLinkedList* %tmp4, i32 0)
  store i8* %getElem_result, i8** %dequeuedElem
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr10
  %mptr12 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable11, i32 0, i32 1
  %method13 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr12
  call void %method13(%StringLinkedList* %tmp9, i32 0)
  %dequeuedElem14 = load i8*, i8** %dequeuedElem
  ret i8* %dequeuedElem14

else:                                             ; preds = %entry
  br label %merge
}

define void @StringQueueprintQueue(%StringQueue* %objptr) {
entry:
  %objptr1 = alloca %StringQueue*
  store %StringQueue* %objptr, %StringQueue** %objptr1
  %temp = alloca %StringLinkedList*
  %tmp = load %StringQueue*, %StringQueue** %objptr1
  %field = getelementptr inbounds %StringQueue, %StringQueue* %tmp, i32 0, i32 1
  %queue = load %StringLinkedList*, %StringLinkedList** %field
  store %StringLinkedList* %queue, %StringLinkedList** %temp
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%StringLinkedList*)*, void (%StringLinkedList*)** %mptr
  call void %method(%StringLinkedList* %tmp2)
  ret void
}

define i32 @Mainmain() {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 3) to i32))
  %Node_vtable = bitcast i8* %malloccall to %Node_vtable*
  %constr_ptr = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 0
  store %Node* (i32)* @Node, %Node* (i32)** %constr_ptr
  %constr_ptr1 = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 1
  store void (%Node*, i32)* @NodesetNext, void (%Node*, i32)** %constr_ptr1
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
  store i32 (%LinkedList*, i32)* @LinkedListgetElem, i32 (%LinkedList*, i32)** %constr_ptr6
  %constr_ptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 3
  store i32 (%LinkedList*)* @LinkedListgetSize, i32 (%LinkedList*)** %constr_ptr7
  %constr_ptr8 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 4
  store void (%LinkedList*, i32)* @LinkedListinsertElem, void (%LinkedList*, i32)** %constr_ptr8
  %constr_ptr9 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 5
  store void (%LinkedList*)* @LinkedListprintLinkedList, void (%LinkedList*)** %constr_ptr9
  %sgl10 = load %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable
  store %LinkedList_vtable %sgl10, %LinkedList_vtable* @LinkedList_vtable
  %malloccall11 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 3) to i32))
  %StringNode_vtable = bitcast i8* %malloccall11 to %StringNode_vtable*
  %constr_ptr12 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, i32 0, i32 0
  store %StringNode* (i8*)* @StringNode, %StringNode* (i8*)** %constr_ptr12
  %constr_ptr13 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, i32 0, i32 1
  store void (%StringNode*, i8*)* @StringNodesetNext, void (%StringNode*, i8*)** %constr_ptr13
  %constr_ptr14 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, i32 0, i32 2
  store void (%StringNode*, %StringNode*)* @StringNodesetNextNode, void (%StringNode*, %StringNode*)** %constr_ptr14
  %sgl15 = load %StringNode_vtable, %StringNode_vtable* %StringNode_vtable
  store %StringNode_vtable %sgl15, %StringNode_vtable* @StringNode_vtable
  %malloccall16 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 6) to i32))
  %StringLinkedList_vtable = bitcast i8* %malloccall16 to %StringLinkedList_vtable*
  %constr_ptr17 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 0
  store %StringLinkedList* ()* @StringLinkedList, %StringLinkedList* ()** %constr_ptr17
  %constr_ptr18 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 1
  store void (%StringLinkedList*, i32)* @StringLinkedListdeleteElem, void (%StringLinkedList*, i32)** %constr_ptr18
  %constr_ptr19 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 2
  store i8* (%StringLinkedList*, i32)* @StringLinkedListgetElem, i8* (%StringLinkedList*, i32)** %constr_ptr19
  %constr_ptr20 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 3
  store i32 (%StringLinkedList*)* @StringLinkedListgetSize, i32 (%StringLinkedList*)** %constr_ptr20
  %constr_ptr21 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 4
  store void (%StringLinkedList*, i8*)* @StringLinkedListinsertElem, void (%StringLinkedList*, i8*)** %constr_ptr21
  %constr_ptr22 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 5
  store void (%StringLinkedList*)* @StringLinkedListprintStringLinkedList, void (%StringLinkedList*)** %constr_ptr22
  %sgl23 = load %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable
  store %StringLinkedList_vtable %sgl23, %StringLinkedList_vtable* @StringLinkedList_vtable
  %malloccall24 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 5) to i32))
  %Stack_vtable = bitcast i8* %malloccall24 to %Stack_vtable*
  %constr_ptr25 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 0
  store %Stack* ()* @Stack, %Stack* ()** %constr_ptr25
  %constr_ptr26 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 1
  store void (%Stack*)* @Stackpop, void (%Stack*)** %constr_ptr26
  %constr_ptr27 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 2
  store void (%Stack*)* @StackprintStack, void (%Stack*)** %constr_ptr27
  %constr_ptr28 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 3
  store void (%Stack*, i32)* @Stackpush, void (%Stack*, i32)** %constr_ptr28
  %constr_ptr29 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 4
  store i32 (%Stack*)* @Stacktop, i32 (%Stack*)** %constr_ptr29
  %sgl30 = load %Stack_vtable, %Stack_vtable* %Stack_vtable
  store %Stack_vtable %sgl30, %Stack_vtable* @Stack_vtable
  %malloccall31 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 5) to i32))
  %StringStack_vtable = bitcast i8* %malloccall31 to %StringStack_vtable*
  %constr_ptr32 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 0
  store %StringStack* ()* @StringStack, %StringStack* ()** %constr_ptr32
  %constr_ptr33 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 1
  store void (%StringStack*)* @StringStackpop, void (%StringStack*)** %constr_ptr33
  %constr_ptr34 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 2
  store void (%StringStack*)* @StringStackprintStack, void (%StringStack*)** %constr_ptr34
  %constr_ptr35 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 3
  store void (%StringStack*, i8*)* @StringStackpush, void (%StringStack*, i8*)** %constr_ptr35
  %constr_ptr36 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 4
  store i8* (%StringStack*)* @StringStacktop, i8* (%StringStack*)** %constr_ptr36
  %sgl37 = load %StringStack_vtable, %StringStack_vtable* %StringStack_vtable
  store %StringStack_vtable %sgl37, %StringStack_vtable* @StringStack_vtable
  %malloccall38 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 4) to i32))
  %Queue_vtable = bitcast i8* %malloccall38 to %Queue_vtable*
  %constr_ptr39 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 0
  store %Queue* ()* @Queue, %Queue* ()** %constr_ptr39
  %constr_ptr40 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 1
  store i32 (%Queue*)* @Queuedequeue, i32 (%Queue*)** %constr_ptr40
  %constr_ptr41 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 2
  store void (%Queue*)* @QueueprintQueue, void (%Queue*)** %constr_ptr41
  %constr_ptr42 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 3
  store void (%Queue*, i32)* @Queuequeue, void (%Queue*, i32)** %constr_ptr42
  %sgl43 = load %Queue_vtable, %Queue_vtable* %Queue_vtable
  store %Queue_vtable %sgl43, %Queue_vtable* @Queue_vtable
  %malloccall44 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 4) to i32))
  %StringQueue_vtable = bitcast i8* %malloccall44 to %StringQueue_vtable*
  %constr_ptr45 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 0
  store %StringQueue* ()* @StringQueue, %StringQueue* ()** %constr_ptr45
  %constr_ptr46 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 1
  store i8* (%StringQueue*)* @StringQueuedequeue, i8* (%StringQueue*)** %constr_ptr46
  %constr_ptr47 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 2
  store void (%StringQueue*)* @StringQueueprintQueue, void (%StringQueue*)** %constr_ptr47
  %constr_ptr48 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 3
  store void (%StringQueue*, i8*)* @StringQueuequeue, void (%StringQueue*, i8*)** %constr_ptr48
  %sgl49 = load %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable
  store %StringQueue_vtable %sgl49, %StringQueue_vtable* @StringQueue_vtable
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %Main_vtable = bitcast i8* %malloccall50 to %Main_vtable*
  %constr_ptr51 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr51
  %sgl52 = load %Main_vtable, %Main_vtable* %Main_vtable
  store %Main_vtable %sgl52, %Main_vtable* @Main_vtable
  %list = alloca %StringLinkedList*
  %mptr = load %StringLinkedList* ()*, %StringLinkedList* ()** getelementptr inbounds (%StringLinkedList_vtable, %StringLinkedList_vtable* @StringLinkedList_vtable, i32 0, i32 0)
  %StringLinkedList_constr_result = call %StringLinkedList* %mptr()
  store %StringLinkedList* %StringLinkedList_constr_result, %StringLinkedList** %list
  %tmp = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr
  %mptr53 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr53
  call void %method(%StringLinkedList* %tmp, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.119, i32 0, i32 0))
  %tmp54 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr55 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp54, i32 0, i32 0
  %vtable56 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr55
  %mptr57 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable56, i32 0, i32 4
  %method58 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr57
  call void %method58(%StringLinkedList* %tmp54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.120, i32 0, i32 0))
  %tmp59 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr60 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp59, i32 0, i32 0
  %vtable61 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr60
  %mptr62 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable61, i32 0, i32 4
  %method63 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr62
  call void %method63(%StringLinkedList* %tmp59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.121, i32 0, i32 0))
  %tmp64 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr65 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp64, i32 0, i32 0
  %vtable66 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr65
  %mptr67 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable66, i32 0, i32 4
  %method68 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr67
  call void %method68(%StringLinkedList* %tmp64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.122, i32 0, i32 0))
  %tmp69 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr70 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp69, i32 0, i32 0
  %vtable71 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr70
  %mptr72 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable71, i32 0, i32 4
  %method73 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr72
  call void %method73(%StringLinkedList* %tmp69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.123, i32 0, i32 0))
  %tmp74 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr75 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp74, i32 0, i32 0
  %vtable76 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr75
  %mptr77 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable76, i32 0, i32 4
  %method78 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr77
  call void %method78(%StringLinkedList* %tmp74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.124, i32 0, i32 0))
  %tmp79 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr80 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp79, i32 0, i32 0
  %vtable81 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr80
  %mptr82 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable81, i32 0, i32 4
  %method83 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr82
  call void %method83(%StringLinkedList* %tmp79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.125, i32 0, i32 0))
  %tmp84 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr85 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp84, i32 0, i32 0
  %vtable86 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr85
  %mptr87 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable86, i32 0, i32 4
  %method88 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr87
  call void %method88(%StringLinkedList* %tmp84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.126, i32 0, i32 0))
  %tmp89 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr90 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp89, i32 0, i32 0
  %vtable91 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr90
  %mptr92 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable91, i32 0, i32 4
  %method93 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr92
  call void %method93(%StringLinkedList* %tmp89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.127, i32 0, i32 0))
  %tmp94 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr95 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp94, i32 0, i32 0
  %vtable96 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr95
  %mptr97 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable96, i32 0, i32 4
  %method98 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr97
  call void %method98(%StringLinkedList* %tmp94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.128, i32 0, i32 0))
  %tmp99 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr100 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp99, i32 0, i32 0
  %vtable101 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr100
  %mptr102 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable101, i32 0, i32 4
  %method103 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr102
  call void %method103(%StringLinkedList* %tmp99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.129, i32 0, i32 0))
  %tmp104 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr105 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp104, i32 0, i32 0
  %vtable106 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr105
  %mptr107 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable106, i32 0, i32 4
  %method108 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr107
  call void %method108(%StringLinkedList* %tmp104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.130, i32 0, i32 0))
  %tmp109 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr110 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp109, i32 0, i32 0
  %vtable111 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr110
  %mptr112 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable111, i32 0, i32 4
  %method113 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr112
  call void %method113(%StringLinkedList* %tmp109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.131, i32 0, i32 0))
  %tmp114 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr115 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp114, i32 0, i32 0
  %vtable116 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr115
  %mptr117 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable116, i32 0, i32 4
  %method118 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr117
  call void %method118(%StringLinkedList* %tmp114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.132, i32 0, i32 0))
  %tmp119 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr120 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp119, i32 0, i32 0
  %vtable121 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr120
  %mptr122 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable121, i32 0, i32 4
  %method123 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr122
  call void %method123(%StringLinkedList* %tmp119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.133, i32 0, i32 0))
  %tmp124 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr125 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp124, i32 0, i32 0
  %vtable126 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr125
  %mptr127 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable126, i32 0, i32 4
  %method128 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr127
  call void %method128(%StringLinkedList* %tmp124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.134, i32 0, i32 0))
  %tmp129 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr130 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp129, i32 0, i32 0
  %vtable131 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr130
  %mptr132 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable131, i32 0, i32 4
  %method133 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr132
  call void %method133(%StringLinkedList* %tmp129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.135, i32 0, i32 0))
  %tmp134 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr135 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp134, i32 0, i32 0
  %vtable136 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr135
  %mptr137 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable136, i32 0, i32 4
  %method138 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr137
  call void %method138(%StringLinkedList* %tmp134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.136, i32 0, i32 0))
  %tmp139 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr140 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp139, i32 0, i32 0
  %vtable141 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr140
  %mptr142 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable141, i32 0, i32 4
  %method143 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr142
  call void %method143(%StringLinkedList* %tmp139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.137, i32 0, i32 0))
  %tmp144 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr145 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp144, i32 0, i32 0
  %vtable146 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr145
  %mptr147 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable146, i32 0, i32 4
  %method148 = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr147
  call void %method148(%StringLinkedList* %tmp144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.138, i32 0, i32 0))
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.118, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @str.139, i32 0, i32 0))
  %tmp149 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr150 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp149, i32 0, i32 0
  %vtable151 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr150
  %mptr152 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable151, i32 0, i32 5
  %method153 = load void (%StringLinkedList*)*, void (%StringLinkedList*)** %mptr152
  call void %method153(%StringLinkedList* %tmp149)
  %printf154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.140, i32 0, i32 0))
  %tmp155 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr156 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp155, i32 0, i32 0
  %vtable157 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr156
  %mptr158 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable157, i32 0, i32 1
  %method159 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr158
  call void %method159(%StringLinkedList* %tmp155, i32 19)
  %tmp160 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr161 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp160, i32 0, i32 0
  %vtable162 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr161
  %mptr163 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable162, i32 0, i32 1
  %method164 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr163
  call void %method164(%StringLinkedList* %tmp160, i32 3)
  %tmp165 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr166 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp165, i32 0, i32 0
  %vtable167 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr166
  %mptr168 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable167, i32 0, i32 1
  %method169 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr168
  call void %method169(%StringLinkedList* %tmp165, i32 4)
  %tmp170 = load %StringLinkedList*, %StringLinkedList** %list
  %vtable_ptr171 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp170, i32 0, i32 0
  %vtable172 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr171
  %mptr173 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable172, i32 0, i32 5
  %method174 = load void (%StringLinkedList*)*, void (%StringLinkedList*)** %mptr173
  call void %method174(%StringLinkedList* %tmp170)
  ret i32 0
}

define i32 @main() {
entry:
  %Mainmain_result = call i32 @Mainmain()
  ret i32 0
}

define %Node* @Node(i32 %data) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Node* getelementptr (%Node, %Node* null, i32 1) to i32))
  %Node = bitcast i8* %malloccall to %Node*
  %vtable = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 0
  store %Node_vtable* @Node_vtable, %Node_vtable** %vtable
  %field = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store %Node* null, %Node** %field
  %field1 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 2
  store i32 0, i32* %field1
  %data2 = alloca i32
  store i32 %data, i32* %data2
  %data3 = load i32, i32* %data2
  %field4 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 2
  store i32 %data3, i32* %field4
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

define %StringNode* @StringNode(i8* %data) {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 3) to i32))
  %StringNode = bitcast i8* %malloccall to %StringNode*
  %vtable = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 0
  store %StringNode_vtable* @StringNode_vtable, %StringNode_vtable** %vtable
  %field = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 1
  store %StringNode* null, %StringNode** %field
  %field1 = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str, i32 0, i32 0), i8** %field1
  %data2 = alloca i8*
  store i8* %data, i8** %data2
  %data3 = load i8*, i8** %data2
  %field4 = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 2
  store i8* %data3, i8** %field4
  ret %StringNode* %StringNode
}

define %StringLinkedList* @StringLinkedList() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%StringLinkedList* getelementptr (%StringLinkedList, %StringLinkedList* null, i32 1) to i32))
  %StringLinkedList = bitcast i8* %malloccall to %StringLinkedList*
  %vtable = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 0
  store %StringLinkedList_vtable* @StringLinkedList_vtable, %StringLinkedList_vtable** %vtable
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 1
  store i32 0, i32* %field
  %field1 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 2
  store %StringNode* null, %StringNode** %field1
  %field2 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 1
  store i32 0, i32* %field2
  ret %StringLinkedList* %StringLinkedList
}

define %Stack* @Stack() {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %Stack = bitcast i8* %malloccall to %Stack*
  %vtable = getelementptr inbounds %Stack, %Stack* %Stack, i32 0, i32 0
  store %Stack_vtable* @Stack_vtable, %Stack_vtable** %vtable
  %field = getelementptr inbounds %Stack, %Stack* %Stack, i32 0, i32 1
  store %LinkedList* null, %LinkedList** %field
  %mptr = load %LinkedList* ()*, %LinkedList* ()** getelementptr inbounds (%LinkedList_vtable, %LinkedList_vtable* @LinkedList_vtable, i32 0, i32 0)
  %LinkedList_constr_result = call %LinkedList* %mptr()
  %field1 = getelementptr inbounds %Stack, %Stack* %Stack, i32 0, i32 1
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %field1
  ret %Stack* %Stack
}

define %StringStack* @StringStack() {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %StringStack = bitcast i8* %malloccall to %StringStack*
  %vtable = getelementptr inbounds %StringStack, %StringStack* %StringStack, i32 0, i32 0
  store %StringStack_vtable* @StringStack_vtable, %StringStack_vtable** %vtable
  %field = getelementptr inbounds %StringStack, %StringStack* %StringStack, i32 0, i32 1
  store %StringLinkedList* null, %StringLinkedList** %field
  %mptr = load %StringLinkedList* ()*, %StringLinkedList* ()** getelementptr inbounds (%StringLinkedList_vtable, %StringLinkedList_vtable* @StringLinkedList_vtable, i32 0, i32 0)
  %StringLinkedList_constr_result = call %StringLinkedList* %mptr()
  %field1 = getelementptr inbounds %StringStack, %StringStack* %StringStack, i32 0, i32 1
  store %StringLinkedList* %StringLinkedList_constr_result, %StringLinkedList** %field1
  ret %StringStack* %StringStack
}

define %Queue* @Queue() {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %Queue = bitcast i8* %malloccall to %Queue*
  %vtable = getelementptr inbounds %Queue, %Queue* %Queue, i32 0, i32 0
  store %Queue_vtable* @Queue_vtable, %Queue_vtable** %vtable
  %field = getelementptr inbounds %Queue, %Queue* %Queue, i32 0, i32 1
  store %LinkedList* null, %LinkedList** %field
  %mptr = load %LinkedList* ()*, %LinkedList* ()** getelementptr inbounds (%LinkedList_vtable, %LinkedList_vtable* @LinkedList_vtable, i32 0, i32 0)
  %LinkedList_constr_result = call %LinkedList* %mptr()
  %field1 = getelementptr inbounds %Queue, %Queue* %Queue, i32 0, i32 1
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %field1
  ret %Queue* %Queue
}

define %StringQueue* @StringQueue() {
entry:
  %malloccall = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %StringQueue = bitcast i8* %malloccall to %StringQueue*
  %vtable = getelementptr inbounds %StringQueue, %StringQueue* %StringQueue, i32 0, i32 0
  store %StringQueue_vtable* @StringQueue_vtable, %StringQueue_vtable** %vtable
  %field = getelementptr inbounds %StringQueue, %StringQueue* %StringQueue, i32 0, i32 1
  store %StringLinkedList* null, %StringLinkedList** %field
  %mptr = load %StringLinkedList* ()*, %StringLinkedList* ()** getelementptr inbounds (%StringLinkedList_vtable, %StringLinkedList_vtable* @StringLinkedList_vtable, i32 0, i32 0)
  %StringLinkedList_constr_result = call %StringLinkedList* %mptr()
  %field1 = getelementptr inbounds %StringQueue, %StringQueue* %StringQueue, i32 0, i32 1
  store %StringLinkedList* %StringLinkedList_constr_result, %StringLinkedList** %field1
  ret %StringQueue* %StringQueue
}

declare noalias i8* @malloc(i32)
