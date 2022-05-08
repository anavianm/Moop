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
%Bar_vtable = type { %Bar* ()*, i32 (%Bar*)*, void (%Bar*)*, void (%Bar*)*, void (%Bar*)*, void (%Bar*, i32)* }
%Bar = type { %Bar_vtable*, i32 }
%Foo_vtable = type { %Foo* (i32, i32)*, void (%Foo*)*, i32 (%Foo*)*, i32 (%Bar*)*, void (%Foo*)*, void (%Foo*)*, void (%Bar*)*, void (%Foo*)*, void (%Bar*)*, void (%Foo*, i32, i32)*, void (%Foo*, i32)*, void (%Bar*, i32)* }
%Foo = type { %Foo_vtable*, i32, i32, i32 }
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
@Bar_vtable = global %Bar_vtable { %Bar* ()* @Bar, i32 (%Bar*)* @BargetY, void (%Bar*)* @BarprintClassName, void (%Bar*)* @BarprintHello, void (%Bar*)* @BarprintY, void (%Bar*, i32)* @BarsetY }
@Foo_vtable = global %Foo_vtable { %Foo* (i32, i32)* @Foo, void (%Foo*)* @FoogetAll, i32 (%Foo*)* @FoogetX, i32 (%Bar*)* @BargetY, void (%Foo*)* @FooprintAll, void (%Foo*)* @FooprintClassName, void (%Bar*)* @BarprintHello, void (%Foo*)* @FooprintX, void (%Bar*)* @BarprintY, void (%Foo*, i32, i32)* @FoosetAll, void (%Foo*, i32)* @FoosetX, void (%Bar*, i32)* @BarsetY }
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
@fmt.42 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.43 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.44 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.45 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.46 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.47 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.48 = private unnamed_addr constant [23 x i8] c"Element does not exist\00", align 1
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
@fmt.64 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.65 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.66 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.67 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.68 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.69 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.70 = private unnamed_addr constant [23 x i8] c"Element does not exist\00", align 1
@fmt.71 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.72 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.73 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.74 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.75 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.76 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.77 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.78 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.79 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.80 = private unnamed_addr constant [42 x i8] c"Stack is empty, no element to be returned\00", align 1
@fmt.81 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.82 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.83 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.84 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.85 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.86 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.87 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.88 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.89 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.90 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.91 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.92 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.93 = private unnamed_addr constant [42 x i8] c"Stack is empty, no element to be returned\00", align 1
@str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fmt.95 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.96 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.97 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.98 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.99 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.100 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.101 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.102 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.103 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.104 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.105 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.106 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.107 = private unnamed_addr constant [42 x i8] c"Queue is empty, no element to be dequeued\00", align 1
@fmt.108 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.109 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.110 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.111 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.112 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.113 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.114 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.115 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.116 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.117 = private unnamed_addr constant [42 x i8] c"Queue is empty, no element to be dequeued\00", align 1
@str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fmt.119 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.120 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.121 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.122 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.123 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.124 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.125 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.126 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.127 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.128 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.129 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.130 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.131 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.132 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.133 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.134 = private unnamed_addr constant [15 x i8] c"Hello from Bar\00", align 1
@fmt.135 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.136 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.137 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.138 = private unnamed_addr constant [4 x i8] c"Bar\00", align 1
@fmt.139 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.140 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.141 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.142 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.143 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.144 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.145 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.146 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.147 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.148 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.149 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.150 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.151 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.152 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.153 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.154 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.155 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.156 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@fmt.157 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.158 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.159 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.160 = private unnamed_addr constant [4 x i8] c"Foo\00", align 1
@fmt.161 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fmt.162 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@fmt.163 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

declare i32 @printf(i8*, ...)

define void @NodesetNext(%Node* %objptr, i32 %data) {
entry:
  %objptr1 = alloca %Node*, align 8
  store %Node* %objptr, %Node** %objptr1, align 8
  %data2 = alloca i32, align 4
  store i32 %data, i32* %data2, align 4
  %tmp = load %Node*, %Node** %objptr1, align 8
  %mptr = load %Node* (i32)*, %Node* (i32)** getelementptr inbounds (%Node_vtable, %Node_vtable* @Node_vtable, i32 0, i32 0), align 8
  %data3 = load i32, i32* %data2, align 4
  %Node_constr_result = call %Node* %mptr(i32 %data3)
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 1
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
  %field = getelementptr inbounds %Node, %Node* %tmp, i32 0, i32 1
  store %Node* %node3, %Node** %field, align 8
  ret void
}

define void @LinkedListinsertElem(%LinkedList* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %elem2 = alloca i32, align 4
  store i32 %elem, i32* %elem2, align 4
  %i = alloca i32, align 4
  %curr = alloca %Node*, align 8
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field, align 4
  %tmp3 = icmp eq i32 %size, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %merge19, %then
  %tmp23 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp24 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field25 = getelementptr inbounds %LinkedList, %LinkedList* %tmp24, i32 0, i32 1
  %size26 = load i32, i32* %field25, align 4
  %tmp27 = add i32 %size26, 1
  %field28 = getelementptr inbounds %LinkedList, %LinkedList* %tmp23, i32 0, i32 1
  store i32 %tmp27, i32* %field28, align 4
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %mptr = load %Node* (i32)*, %Node* (i32)** getelementptr inbounds (%Node_vtable, %Node_vtable* @Node_vtable, i32 0, i32 0), align 8
  %elem5 = load i32, i32* %elem2, align 4
  %Node_constr_result = call %Node* %mptr(i32 %elem5)
  %field6 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 2
  store %Node* %Node_constr_result, %Node** %field6, align 8
  br label %merge

else:                                             ; preds = %entry
  %tmp7 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp7, i32 0, i32 2
  %first = load %Node*, %Node** %field8, align 8
  store %Node* %first, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %else
  %i13 = load i32, i32* %i, align 4
  %tmp14 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 1
  %size16 = load i32, i32* %field15, align 4
  %tmp17 = sub i32 %size16, 1
  %tmp18 = icmp slt i32 %i13, %tmp17
  br i1 %tmp18, label %while_body, label %merge19

while_body:                                       ; preds = %while
  %tmp9 = load %Node*, %Node** %curr, align 8
  %field10 = getelementptr inbounds %Node, %Node* %tmp9, i32 0, i32 1
  %next = load %Node*, %Node** %field10, align 8
  store %Node* %next, %Node** %curr, align 8
  %i11 = load i32, i32* %i, align 4
  %tmp12 = add i32 %i11, 1
  store i32 %tmp12, i32* %i, align 4
  br label %while

merge19:                                          ; preds = %while
  %tmp20 = load %Node*, %Node** %curr, align 8
  %vtable_ptr = getelementptr inbounds %Node, %Node* %tmp20, i32 0, i32 0
  %vtable = load %Node_vtable*, %Node_vtable** %vtable_ptr, align 8
  %mptr21 = getelementptr inbounds %Node_vtable, %Node_vtable* %vtable, i32 0, i32 1
  %method = load void (%Node*, i32)*, void (%Node*, i32)** %mptr21, align 8
  %elem22 = load i32, i32* %elem2, align 4
  call void %method(%Node* %tmp20, i32 %elem22)
  br label %merge
}

define i32 @LinkedListgetSize(%LinkedList* %objptr) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 1
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
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 2
  %first = load %Node*, %Node** %field, align 8
  store %Node* %first, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i, align 4
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 1
  %size = load i32, i32* %field10, align 4
  %tmp11 = icmp slt i32 %i8, %size
  br i1 %tmp11, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp2 = load %Node*, %Node** %curr, align 8
  %field3 = getelementptr inbounds %Node, %Node* %tmp2, i32 0, i32 2
  %data = load i32, i32* %field3, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.42, i32 0, i32 0), i32 %data)
  %tmp4 = load %Node*, %Node** %curr, align 8
  %field5 = getelementptr inbounds %Node, %Node* %tmp4, i32 0, i32 1
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
  %field15 = getelementptr inbounds %LinkedList, %LinkedList* %tmp14, i32 0, i32 2
  %first16 = load %Node*, %Node** %field15, align 8
  store %Node* %first16, %Node** %prev, align 8
  %tmp17 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field18 = getelementptr inbounds %LinkedList, %LinkedList* %tmp17, i32 0, i32 2
  %first19 = load %Node*, %Node** %field18, align 8
  store %Node* %first19, %Node** %temp, align 8
  %tmp20 = load %Node*, %Node** %temp, align 8
  %field21 = getelementptr inbounds %Node, %Node* %tmp20, i32 0, i32 1
  %next22 = load %Node*, %Node** %field21, align 8
  store %Node* %next22, %Node** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 2
  %first = load %Node*, %Node** %field, align 8
  store %Node* %first, %Node** %temp, align 8
  %tmp5 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp6 = load %Node*, %Node** %temp, align 8
  %field7 = getelementptr inbounds %Node, %Node* %tmp6, i32 0, i32 1
  %next = load %Node*, %Node** %field7, align 8
  %field8 = getelementptr inbounds %LinkedList, %LinkedList* %tmp5, i32 0, i32 2
  store %Node* %next, %Node** %field8, align 8
  %tmp9 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp10 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field11 = getelementptr inbounds %LinkedList, %LinkedList* %tmp10, i32 0, i32 1
  %size = load i32, i32* %field11, align 4
  %tmp12 = sub i32 %size, 1
  %field13 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 1
  store i32 %tmp12, i32* %field13, align 4
  ret void

else:                                             ; preds = %entry
  br label %merge

while:                                            ; preds = %merge27, %merge
  %i47 = load i32, i32* %i, align 4
  %tmp48 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field49 = getelementptr inbounds %LinkedList, %LinkedList* %tmp48, i32 0, i32 1
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
  %field30 = getelementptr inbounds %Node, %Node* %tmp29, i32 0, i32 1
  %next31 = load %Node*, %Node** %field30, align 8
  store %Node* %next31, %Node** %temp, align 8
  %tmp32 = load %Node*, %Node** %prev, align 8
  %vtable_ptr = getelementptr inbounds %Node, %Node* %tmp32, i32 0, i32 0
  %vtable = load %Node_vtable*, %Node_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Node_vtable, %Node_vtable* %vtable, i32 0, i32 2
  %method = load void (%Node*, %Node*)*, void (%Node*, %Node*)** %mptr, align 8
  %temp33 = load %Node*, %Node** %temp, align 8
  call void %method(%Node* %tmp32, %Node* %temp33)
  %tmp34 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %tmp35 = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field36 = getelementptr inbounds %LinkedList, %LinkedList* %tmp35, i32 0, i32 1
  %size37 = load i32, i32* %field36, align 4
  %tmp38 = sub i32 %size37, 1
  %field39 = getelementptr inbounds %LinkedList, %LinkedList* %tmp34, i32 0, i32 1
  store i32 %tmp38, i32* %field39, align 4
  ret void

else40:                                           ; preds = %while_body
  %curr41 = load %Node*, %Node** %curr, align 8
  store %Node* %curr41, %Node** %prev, align 8
  %tmp42 = load %Node*, %Node** %curr, align 8
  %field43 = getelementptr inbounds %Node, %Node* %tmp42, i32 0, i32 1
  %next44 = load %Node*, %Node** %field43, align 8
  store %Node* %next44, %Node** %curr, align 8
  br label %merge27

merge52:                                          ; preds = %while
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.47, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.48, i32 0, i32 0))
  ret void
}

define i32 @LinkedListgetElem(%LinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %LinkedList*, align 8
  store %LinkedList* %objptr, %LinkedList** %objptr1, align 8
  %index2 = alloca i32, align 4
  store i32 %index, i32* %index2, align 4
  %curr = alloca %Node*, align 8
  %i = alloca i32, align 4
  %tmp = load %LinkedList*, %LinkedList** %objptr1, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %tmp, i32 0, i32 2
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
  %field4 = getelementptr inbounds %Node, %Node* %tmp3, i32 0, i32 1
  %next = load %Node*, %Node** %field4, align 8
  store %Node* %next, %Node** %curr, align 8
  %i5 = load i32, i32* %i, align 4
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i, align 4
  br label %while

merge:                                            ; preds = %while
  %tmp10 = load %Node*, %Node** %curr, align 8
  %field11 = getelementptr inbounds %Node, %Node* %tmp10, i32 0, i32 2
  %data = load i32, i32* %field11, align 4
  ret i32 %data
}

define void @StringNodesetNext(%StringNode* %objptr, i8* %data) {
entry:
  %objptr1 = alloca %StringNode*, align 8
  store %StringNode* %objptr, %StringNode** %objptr1, align 8
  %data2 = alloca i8*, align 8
  store i8* %data, i8** %data2, align 8
  %tmp = load %StringNode*, %StringNode** %objptr1, align 8
  %mptr = load %StringNode* (i8*)*, %StringNode* (i8*)** getelementptr inbounds (%StringNode_vtable, %StringNode_vtable* @StringNode_vtable, i32 0, i32 0), align 8
  %data3 = load i8*, i8** %data2, align 8
  %StringNode_constr_result = call %StringNode* %mptr(i8* %data3)
  %field = getelementptr inbounds %StringNode, %StringNode* %tmp, i32 0, i32 1
  store %StringNode* %StringNode_constr_result, %StringNode** %field, align 8
  ret void
}

define void @StringNodesetNextNode(%StringNode* %objptr, %StringNode* %node) {
entry:
  %objptr1 = alloca %StringNode*, align 8
  store %StringNode* %objptr, %StringNode** %objptr1, align 8
  %node2 = alloca %StringNode*, align 8
  store %StringNode* %node, %StringNode** %node2, align 8
  %tmp = load %StringNode*, %StringNode** %objptr1, align 8
  %node3 = load %StringNode*, %StringNode** %node2, align 8
  %field = getelementptr inbounds %StringNode, %StringNode* %tmp, i32 0, i32 1
  store %StringNode* %node3, %StringNode** %field, align 8
  ret void
}

define void @StringLinkedListinsertElem(%StringLinkedList* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %StringLinkedList*, align 8
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1, align 8
  %elem2 = alloca i8*, align 8
  store i8* %elem, i8** %elem2, align 8
  %i = alloca i32, align 4
  %curr = alloca %StringNode*, align 8
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field, align 4
  %tmp3 = icmp eq i32 %size, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %merge19, %then
  %tmp23 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %tmp24 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field25 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp24, i32 0, i32 1
  %size26 = load i32, i32* %field25, align 4
  %tmp27 = add i32 %size26, 1
  %field28 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp23, i32 0, i32 1
  store i32 %tmp27, i32* %field28, align 4
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %mptr = load %StringNode* (i8*)*, %StringNode* (i8*)** getelementptr inbounds (%StringNode_vtable, %StringNode_vtable* @StringNode_vtable, i32 0, i32 0), align 8
  %elem5 = load i8*, i8** %elem2, align 8
  %StringNode_constr_result = call %StringNode* %mptr(i8* %elem5)
  %field6 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 2
  store %StringNode* %StringNode_constr_result, %StringNode** %field6, align 8
  br label %merge

else:                                             ; preds = %entry
  %tmp7 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field8 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp7, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field8, align 8
  store %StringNode* %first, %StringNode** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %else
  %i13 = load i32, i32* %i, align 4
  %tmp14 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field15 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp14, i32 0, i32 1
  %size16 = load i32, i32* %field15, align 4
  %tmp17 = sub i32 %size16, 1
  %tmp18 = icmp slt i32 %i13, %tmp17
  br i1 %tmp18, label %while_body, label %merge19

while_body:                                       ; preds = %while
  %tmp9 = load %StringNode*, %StringNode** %curr, align 8
  %field10 = getelementptr inbounds %StringNode, %StringNode* %tmp9, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field10, align 8
  store %StringNode* %next, %StringNode** %curr, align 8
  %i11 = load i32, i32* %i, align 4
  %tmp12 = add i32 %i11, 1
  store i32 %tmp12, i32* %i, align 4
  br label %while

merge19:                                          ; preds = %while
  %tmp20 = load %StringNode*, %StringNode** %curr, align 8
  %vtable_ptr = getelementptr inbounds %StringNode, %StringNode* %tmp20, i32 0, i32 0
  %vtable = load %StringNode_vtable*, %StringNode_vtable** %vtable_ptr, align 8
  %mptr21 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %vtable, i32 0, i32 1
  %method = load void (%StringNode*, i8*)*, void (%StringNode*, i8*)** %mptr21, align 8
  %elem22 = load i8*, i8** %elem2, align 8
  call void %method(%StringNode* %tmp20, i8* %elem22)
  br label %merge
}

define i32 @StringLinkedListgetSize(%StringLinkedList* %objptr) {
entry:
  %objptr1 = alloca %StringLinkedList*, align 8
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1, align 8
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 1
  %size = load i32, i32* %field, align 4
  ret i32 %size
}

define void @StringLinkedListprintStringLinkedList(%StringLinkedList* %objptr) {
entry:
  %objptr1 = alloca %StringLinkedList*, align 8
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1, align 8
  %curr = alloca %StringNode*, align 8
  %i = alloca i32, align 4
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field, align 8
  store %StringNode* %first, %StringNode** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %i8 = load i32, i32* %i, align 4
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 1
  %size = load i32, i32* %field10, align 4
  %tmp11 = icmp slt i32 %i8, %size
  br i1 %tmp11, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp2 = load %StringNode*, %StringNode** %curr, align 8
  %field3 = getelementptr inbounds %StringNode, %StringNode* %tmp2, i32 0, i32 2
  %data = load i8*, i8** %field3, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.66, i32 0, i32 0), i8* %data)
  %tmp4 = load %StringNode*, %StringNode** %curr, align 8
  %field5 = getelementptr inbounds %StringNode, %StringNode* %tmp4, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field5, align 8
  store %StringNode* %next, %StringNode** %curr, align 8
  %i6 = load i32, i32* %i, align 4
  %tmp7 = add i32 %i6, 1
  store i32 %tmp7, i32* %i, align 4
  br label %while

merge:                                            ; preds = %while
  ret void
}

define void @StringLinkedListdeleteElem(%StringLinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %StringLinkedList*, align 8
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1, align 8
  %index2 = alloca i32, align 4
  store i32 %index, i32* %index2, align 4
  %prev = alloca %StringNode*, align 8
  %curr = alloca %StringNode*, align 8
  %temp = alloca %StringNode*, align 8
  %i = alloca i32, align 4
  %index3 = load i32, i32* %index2, align 4
  %tmp = icmp eq i32 %index3, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; preds = %else
  %tmp14 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field15 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp14, i32 0, i32 2
  %first16 = load %StringNode*, %StringNode** %field15, align 8
  store %StringNode* %first16, %StringNode** %prev, align 8
  %tmp17 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field18 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp17, i32 0, i32 2
  %first19 = load %StringNode*, %StringNode** %field18, align 8
  store %StringNode* %first19, %StringNode** %temp, align 8
  %tmp20 = load %StringNode*, %StringNode** %temp, align 8
  %field21 = getelementptr inbounds %StringNode, %StringNode* %tmp20, i32 0, i32 1
  %next22 = load %StringNode*, %StringNode** %field21, align 8
  store %StringNode* %next22, %StringNode** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field, align 8
  store %StringNode* %first, %StringNode** %temp, align 8
  %tmp5 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %tmp6 = load %StringNode*, %StringNode** %temp, align 8
  %field7 = getelementptr inbounds %StringNode, %StringNode* %tmp6, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field7, align 8
  %field8 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp5, i32 0, i32 2
  store %StringNode* %next, %StringNode** %field8, align 8
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %tmp10 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field11 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp10, i32 0, i32 1
  %size = load i32, i32* %field11, align 4
  %tmp12 = sub i32 %size, 1
  %field13 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 1
  store i32 %tmp12, i32* %field13, align 4
  ret void

else:                                             ; preds = %entry
  br label %merge

while:                                            ; preds = %merge27, %merge
  %i47 = load i32, i32* %i, align 4
  %tmp48 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field49 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp48, i32 0, i32 1
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
  %tmp29 = load %StringNode*, %StringNode** %curr, align 8
  %field30 = getelementptr inbounds %StringNode, %StringNode* %tmp29, i32 0, i32 1
  %next31 = load %StringNode*, %StringNode** %field30, align 8
  store %StringNode* %next31, %StringNode** %temp, align 8
  %tmp32 = load %StringNode*, %StringNode** %prev, align 8
  %vtable_ptr = getelementptr inbounds %StringNode, %StringNode* %tmp32, i32 0, i32 0
  %vtable = load %StringNode_vtable*, %StringNode_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %vtable, i32 0, i32 2
  %method = load void (%StringNode*, %StringNode*)*, void (%StringNode*, %StringNode*)** %mptr, align 8
  %temp33 = load %StringNode*, %StringNode** %temp, align 8
  call void %method(%StringNode* %tmp32, %StringNode* %temp33)
  %tmp34 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %tmp35 = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field36 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp35, i32 0, i32 1
  %size37 = load i32, i32* %field36, align 4
  %tmp38 = sub i32 %size37, 1
  %field39 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp34, i32 0, i32 1
  store i32 %tmp38, i32* %field39, align 4
  ret void

else40:                                           ; preds = %while_body
  %curr41 = load %StringNode*, %StringNode** %curr, align 8
  store %StringNode* %curr41, %StringNode** %prev, align 8
  %tmp42 = load %StringNode*, %StringNode** %curr, align 8
  %field43 = getelementptr inbounds %StringNode, %StringNode* %tmp42, i32 0, i32 1
  %next44 = load %StringNode*, %StringNode** %field43, align 8
  store %StringNode* %next44, %StringNode** %curr, align 8
  br label %merge27

merge52:                                          ; preds = %while
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.69, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str.70, i32 0, i32 0))
  ret void
}

define i8* @StringLinkedListgetElem(%StringLinkedList* %objptr, i32 %index) {
entry:
  %objptr1 = alloca %StringLinkedList*, align 8
  store %StringLinkedList* %objptr, %StringLinkedList** %objptr1, align 8
  %index2 = alloca i32, align 4
  store i32 %index, i32* %index2, align 4
  %curr = alloca %StringNode*, align 8
  %i = alloca i32, align 4
  %tmp = load %StringLinkedList*, %StringLinkedList** %objptr1, align 8
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp, i32 0, i32 2
  %first = load %StringNode*, %StringNode** %field, align 8
  store %StringNode* %first, %StringNode** %curr, align 8
  store i32 0, i32* %i, align 4
  br label %while

while:                                            ; preds = %while_body, %entry
  %i7 = load i32, i32* %i, align 4
  %index8 = load i32, i32* %index2, align 4
  %tmp9 = icmp slt i32 %i7, %index8
  br i1 %tmp9, label %while_body, label %merge

while_body:                                       ; preds = %while
  %tmp3 = load %StringNode*, %StringNode** %curr, align 8
  %field4 = getelementptr inbounds %StringNode, %StringNode* %tmp3, i32 0, i32 1
  %next = load %StringNode*, %StringNode** %field4, align 8
  store %StringNode* %next, %StringNode** %curr, align 8
  %i5 = load i32, i32* %i, align 4
  %tmp6 = add i32 %i5, 1
  store i32 %tmp6, i32* %i, align 4
  br label %while

merge:                                            ; preds = %while
  %tmp10 = load %StringNode*, %StringNode** %curr, align 8
  %field11 = getelementptr inbounds %StringNode, %StringNode* %tmp10, i32 0, i32 2
  %data = load i8*, i8** %field11, align 8
  ret i8* %data
}

define void @Stackpush(%Stack* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %Stack*, align 8
  store %Stack* %objptr, %Stack** %objptr1, align 8
  %elem2 = alloca i32, align 4
  store i32 %elem, i32* %elem2, align 4
  %temp = alloca %LinkedList*, align 8
  %tmp = load %Stack*, %Stack** %objptr1, align 8
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %stack, %LinkedList** %temp, align 8
  %tmp3 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp3, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr, align 8
  %elem4 = load i32, i32* %elem2, align 4
  call void %method(%LinkedList* %tmp3, i32 %elem4)
  ret void
}

define i32 @Stacktop(%Stack* %objptr) {
entry:
  %objptr1 = alloca %Stack*, align 8
  store %Stack* %objptr, %Stack** %objptr1, align 8
  %poppedElem = alloca i32, align 4
  %temp = alloca %LinkedList*, align 8
  %tmp = load %Stack*, %Stack** %objptr1, align 8
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %stack, %LinkedList** %temp, align 8
  %tmp2 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr, align 8
  %getSize_result = call i32 %method(%LinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.79, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.80, i32 0, i32 0))
  ret i32 -1

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr5 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr5, align 8
  %mptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i32 (%LinkedList*, i32)*, i32 (%LinkedList*, i32)** %mptr7, align 8
  %tmp9 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr12, align 8
  %getSize_result14 = call i32 %method13(%LinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  %getElem_result = call i32 %method8(%LinkedList* %tmp4, i32 %tmp15)
  store i32 %getElem_result, i32* %poppedElem, align 4
  %poppedElem16 = load i32, i32* %poppedElem, align 4
  ret i32 %poppedElem16

else:                                             ; preds = %entry
  br label %merge
}

define void @Stackpop(%Stack* %objptr) {
entry:
  %objptr1 = alloca %Stack*, align 8
  store %Stack* %objptr, %Stack** %objptr1, align 8
  %temp = alloca %LinkedList*, align 8
  %tmp = load %Stack*, %Stack** %objptr1, align 8
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %stack, %LinkedList** %temp, align 8
  %tmp2 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr, align 8
  %getSize_result = call i32 %method(%LinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else, %then
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr5 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr5, align 8
  %mptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable6, i32 0, i32 1
  %method8 = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr7, align 8
  %tmp9 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr12, align 8
  %getSize_result14 = call i32 %method13(%LinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  call void %method8(%LinkedList* %tmp4, i32 %tmp15)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define void @StackprintStack(%Stack* %objptr) {
entry:
  %objptr1 = alloca %Stack*, align 8
  store %Stack* %objptr, %Stack** %objptr1, align 8
  %temp = alloca %LinkedList*, align 8
  %tmp = load %Stack*, %Stack** %objptr1, align 8
  %field = getelementptr inbounds %Stack, %Stack* %tmp, i32 0, i32 1
  %stack = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %stack, %LinkedList** %temp, align 8
  %tmp2 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%LinkedList*)*, void (%LinkedList*)** %mptr, align 8
  call void %method(%LinkedList* %tmp2)
  ret void
}

define void @StringStackpush(%StringStack* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %StringStack*, align 8
  store %StringStack* %objptr, %StringStack** %objptr1, align 8
  %elem2 = alloca i8*, align 8
  store i8* %elem, i8** %elem2, align 8
  %temp = alloca %StringLinkedList*, align 8
  %tmp = load %StringStack*, %StringStack** %objptr1, align 8
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %stack, %StringLinkedList** %temp, align 8
  %tmp3 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp3, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr, align 8
  %elem4 = load i8*, i8** %elem2, align 8
  call void %method(%StringLinkedList* %tmp3, i8* %elem4)
  ret void
}

define i8* @StringStacktop(%StringStack* %objptr) {
entry:
  %objptr1 = alloca %StringStack*, align 8
  store %StringStack* %objptr, %StringStack** %objptr1, align 8
  %poppedElem = alloca i8*, align 8
  %temp = alloca %StringLinkedList*, align 8
  %tmp = load %StringStack*, %StringStack** %objptr1, align 8
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %stack, %StringLinkedList** %temp, align 8
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr, align 8
  %getSize_result = call i32 %method(%StringLinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.92, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.93, i32 0, i32 0))
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str.94, i32 0, i32 0)

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr5 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr5, align 8
  %mptr7 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i8* (%StringLinkedList*, i32)*, i8* (%StringLinkedList*, i32)** %mptr7, align 8
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr12, align 8
  %getSize_result14 = call i32 %method13(%StringLinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  %getElem_result = call i8* %method8(%StringLinkedList* %tmp4, i32 %tmp15)
  store i8* %getElem_result, i8** %poppedElem, align 8
  %poppedElem16 = load i8*, i8** %poppedElem, align 8
  ret i8* %poppedElem16

else:                                             ; preds = %entry
  br label %merge
}

define void @StringStackpop(%StringStack* %objptr) {
entry:
  %objptr1 = alloca %StringStack*, align 8
  store %StringStack* %objptr, %StringStack** %objptr1, align 8
  %temp = alloca %StringLinkedList*, align 8
  %tmp = load %StringStack*, %StringStack** %objptr1, align 8
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %stack, %StringLinkedList** %temp, align 8
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr, align 8
  %getSize_result = call i32 %method(%StringLinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else, %then
  ret void

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr5 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr5, align 8
  %mptr7 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable6, i32 0, i32 1
  %method8 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr7, align 8
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable11, i32 0, i32 3
  %method13 = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr12, align 8
  %getSize_result14 = call i32 %method13(%StringLinkedList* %tmp9)
  %tmp15 = sub i32 %getSize_result14, 1
  call void %method8(%StringLinkedList* %tmp4, i32 %tmp15)
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define void @StringStackprintStack(%StringStack* %objptr) {
entry:
  %objptr1 = alloca %StringStack*, align 8
  store %StringStack* %objptr, %StringStack** %objptr1, align 8
  %temp = alloca %StringLinkedList*, align 8
  %tmp = load %StringStack*, %StringStack** %objptr1, align 8
  %field = getelementptr inbounds %StringStack, %StringStack* %tmp, i32 0, i32 1
  %stack = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %stack, %StringLinkedList** %temp, align 8
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%StringLinkedList*)*, void (%StringLinkedList*)** %mptr, align 8
  call void %method(%StringLinkedList* %tmp2)
  ret void
}

define void @Queuequeue(%Queue* %objptr, i32 %elem) {
entry:
  %objptr1 = alloca %Queue*, align 8
  store %Queue* %objptr, %Queue** %objptr1, align 8
  %elem2 = alloca i32, align 4
  store i32 %elem, i32* %elem2, align 4
  %temp = alloca %LinkedList*, align 8
  %tmp = load %Queue*, %Queue** %objptr1, align 8
  %field = getelementptr inbounds %Queue, %Queue* %tmp, i32 0, i32 1
  %queue = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %queue, %LinkedList** %temp, align 8
  %tmp3 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp3, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr, align 8
  %elem4 = load i32, i32* %elem2, align 4
  call void %method(%LinkedList* %tmp3, i32 %elem4)
  ret void
}

define i32 @Queuedequeue(%Queue* %objptr) {
entry:
  %objptr1 = alloca %Queue*, align 8
  store %Queue* %objptr, %Queue** %objptr1, align 8
  %temp = alloca %LinkedList*, align 8
  %dequeuedElem = alloca i32, align 4
  %tmp = load %Queue*, %Queue** %objptr1, align 8
  %field = getelementptr inbounds %Queue, %Queue* %tmp, i32 0, i32 1
  %queue = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %queue, %LinkedList** %temp, align 8
  %tmp2 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%LinkedList*)*, i32 (%LinkedList*)** %mptr, align 8
  %getSize_result = call i32 %method(%LinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.106, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.107, i32 0, i32 0))
  ret i32 -1

then:                                             ; preds = %entry
  %tmp4 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr5 = getelementptr inbounds %LinkedList, %LinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr5, align 8
  %mptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i32 (%LinkedList*, i32)*, i32 (%LinkedList*, i32)** %mptr7, align 8
  %getElem_result = call i32 %method8(%LinkedList* %tmp4, i32 0)
  store i32 %getElem_result, i32* %dequeuedElem, align 4
  %tmp9 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr10 = getelementptr inbounds %LinkedList, %LinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable11, i32 0, i32 1
  %method13 = load void (%LinkedList*, i32)*, void (%LinkedList*, i32)** %mptr12, align 8
  call void %method13(%LinkedList* %tmp9, i32 0)
  %dequeuedElem14 = load i32, i32* %dequeuedElem, align 4
  ret i32 %dequeuedElem14

else:                                             ; preds = %entry
  br label %merge
}

define void @QueueprintQueue(%Queue* %objptr) {
entry:
  %objptr1 = alloca %Queue*, align 8
  store %Queue* %objptr, %Queue** %objptr1, align 8
  %temp = alloca %LinkedList*, align 8
  %tmp = load %Queue*, %Queue** %objptr1, align 8
  %field = getelementptr inbounds %Queue, %Queue* %tmp, i32 0, i32 1
  %queue = load %LinkedList*, %LinkedList** %field, align 8
  store %LinkedList* %queue, %LinkedList** %temp, align 8
  %tmp2 = load %LinkedList*, %LinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %LinkedList, %LinkedList* %tmp2, i32 0, i32 0
  %vtable = load %LinkedList_vtable*, %LinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%LinkedList*)*, void (%LinkedList*)** %mptr, align 8
  call void %method(%LinkedList* %tmp2)
  ret void
}

define void @StringQueuequeue(%StringQueue* %objptr, i8* %elem) {
entry:
  %objptr1 = alloca %StringQueue*, align 8
  store %StringQueue* %objptr, %StringQueue** %objptr1, align 8
  %elem2 = alloca i8*, align 8
  store i8* %elem, i8** %elem2, align 8
  %temp = alloca %StringLinkedList*, align 8
  %tmp = load %StringQueue*, %StringQueue** %objptr1, align 8
  %field = getelementptr inbounds %StringQueue, %StringQueue* %tmp, i32 0, i32 1
  %queue = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %queue, %StringLinkedList** %temp, align 8
  %tmp3 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp3, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 4
  %method = load void (%StringLinkedList*, i8*)*, void (%StringLinkedList*, i8*)** %mptr, align 8
  %elem4 = load i8*, i8** %elem2, align 8
  call void %method(%StringLinkedList* %tmp3, i8* %elem4)
  ret void
}

define i8* @StringQueuedequeue(%StringQueue* %objptr) {
entry:
  %objptr1 = alloca %StringQueue*, align 8
  store %StringQueue* %objptr, %StringQueue** %objptr1, align 8
  %temp = alloca %StringLinkedList*, align 8
  %dequeuedElem = alloca i8*, align 8
  %tmp = load %StringQueue*, %StringQueue** %objptr1, align 8
  %field = getelementptr inbounds %StringQueue, %StringQueue* %tmp, i32 0, i32 1
  %queue = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %queue, %StringLinkedList** %temp, align 8
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 3
  %method = load i32 (%StringLinkedList*)*, i32 (%StringLinkedList*)** %mptr, align 8
  %getSize_result = call i32 %method(%StringLinkedList* %tmp2)
  %tmp3 = icmp sgt i32 %getSize_result, 0
  br i1 %tmp3, label %then, label %else

merge:                                            ; preds = %else
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.116, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.117, i32 0, i32 0))
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str.118, i32 0, i32 0)

then:                                             ; preds = %entry
  %tmp4 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr5 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp4, i32 0, i32 0
  %vtable6 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr5, align 8
  %mptr7 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable6, i32 0, i32 2
  %method8 = load i8* (%StringLinkedList*, i32)*, i8* (%StringLinkedList*, i32)** %mptr7, align 8
  %getElem_result = call i8* %method8(%StringLinkedList* %tmp4, i32 0)
  store i8* %getElem_result, i8** %dequeuedElem, align 8
  %tmp9 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr10 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp9, i32 0, i32 0
  %vtable11 = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable11, i32 0, i32 1
  %method13 = load void (%StringLinkedList*, i32)*, void (%StringLinkedList*, i32)** %mptr12, align 8
  call void %method13(%StringLinkedList* %tmp9, i32 0)
  %dequeuedElem14 = load i8*, i8** %dequeuedElem, align 8
  ret i8* %dequeuedElem14

else:                                             ; preds = %entry
  br label %merge
}

define void @StringQueueprintQueue(%StringQueue* %objptr) {
entry:
  %objptr1 = alloca %StringQueue*, align 8
  store %StringQueue* %objptr, %StringQueue** %objptr1, align 8
  %temp = alloca %StringLinkedList*, align 8
  %tmp = load %StringQueue*, %StringQueue** %objptr1, align 8
  %field = getelementptr inbounds %StringQueue, %StringQueue* %tmp, i32 0, i32 1
  %queue = load %StringLinkedList*, %StringLinkedList** %field, align 8
  store %StringLinkedList* %queue, %StringLinkedList** %temp, align 8
  %tmp2 = load %StringLinkedList*, %StringLinkedList** %temp, align 8
  %vtable_ptr = getelementptr inbounds %StringLinkedList, %StringLinkedList* %tmp2, i32 0, i32 0
  %vtable = load %StringLinkedList_vtable*, %StringLinkedList_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %vtable, i32 0, i32 5
  %method = load void (%StringLinkedList*)*, void (%StringLinkedList*)** %mptr, align 8
  call void %method(%StringLinkedList* %tmp2)
  ret void
}

define void @BarprintY(%Bar* %objptr) {
entry:
  %objptr1 = alloca %Bar*, align 8
  store %Bar* %objptr, %Bar** %objptr1, align 8
  %tmp = load %Bar*, %Bar** %objptr1, align 8
  %field = getelementptr inbounds %Bar, %Bar* %tmp, i32 0, i32 1
  %y = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.122, i32 0, i32 0), i32 %y)
  ret void
}

define void @BarsetY(%Bar* %objptr, i32 %y) {
entry:
  %objptr1 = alloca %Bar*, align 8
  store %Bar* %objptr, %Bar** %objptr1, align 8
  %y2 = alloca i32, align 4
  store i32 %y, i32* %y2, align 4
  %tmp = load %Bar*, %Bar** %objptr1, align 8
  %y3 = load i32, i32* %y2, align 4
  %field = getelementptr inbounds %Bar, %Bar* %tmp, i32 0, i32 1
  store i32 %y3, i32* %field, align 4
  ret void
}

define i32 @BargetY(%Bar* %objptr) {
entry:
  %objptr1 = alloca %Bar*, align 8
  store %Bar* %objptr, %Bar** %objptr1, align 8
  %tmp = load %Bar*, %Bar** %objptr1, align 8
  %field = getelementptr inbounds %Bar, %Bar* %tmp, i32 0, i32 1
  %y = load i32, i32* %field, align 4
  ret i32 %y
}

define void @BarprintHello(%Bar* %objptr) {
entry:
  %objptr1 = alloca %Bar*, align 8
  store %Bar* %objptr, %Bar** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.134, i32 0, i32 0))
  ret void
}

define void @BarprintClassName(%Bar* %objptr) {
entry:
  %objptr1 = alloca %Bar*, align 8
  store %Bar* %objptr, %Bar** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.137, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.138, i32 0, i32 0))
  ret void
}

define void @FoosetX(%Foo* %objptr, i32 %x) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %x2 = alloca i32, align 4
  store i32 %x, i32* %x2, align 4
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %x3 = load i32, i32* %x2, align 4
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 3
  store i32 %x3, i32* %field, align 4
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
  %field = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 3
  %x = load i32, i32* %field, align 4
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.145, i32 0, i32 0), i32 %x)
  ret void
}

define void @FooprintAll(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 7
  %method = load void (%Foo*)*, void (%Foo*)** %mptr, align 8
  call void %method(%Foo* %tmp)
  %tmp2 = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr3 = getelementptr inbounds %Foo, %Foo* %tmp2, i32 0, i32 0
  %vtable4 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr3, align 8
  %mptr5 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable4, i32 0, i32 8
  %method6 = load void (%Bar*)*, void (%Bar*)** %mptr5, align 8
  %bitcast_obj = bitcast %Foo* %tmp2 to %Bar*
  call void %method6(%Bar* %bitcast_obj)
  ret void
}

define void @FoosetAll(%Foo* %objptr, i32 %x, i32 %y) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %x2 = alloca i32, align 4
  store i32 %x, i32* %x2, align 4
  %y3 = alloca i32, align 4
  store i32 %y, i32* %y3, align 4
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 10
  %method = load void (%Foo*, i32)*, void (%Foo*, i32)** %mptr, align 8
  %x4 = load i32, i32* %x2, align 4
  call void %method(%Foo* %tmp, i32 %x4)
  %tmp5 = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr6 = getelementptr inbounds %Foo, %Foo* %tmp5, i32 0, i32 0
  %vtable7 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr6, align 8
  %mptr8 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable7, i32 0, i32 11
  %method9 = load void (%Bar*, i32)*, void (%Bar*, i32)** %mptr8, align 8
  %y10 = load i32, i32* %y3, align 4
  %bitcast_obj = bitcast %Foo* %tmp5 to %Bar*
  call void %method9(%Bar* %bitcast_obj, i32 %y10)
  ret void
}

define void @FoogetAll(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %tmp = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %tmp, i32 0, i32 0
  %vtable = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable, i32 0, i32 2
  %method = load i32 (%Foo*)*, i32 (%Foo*)** %mptr, align 8
  %getX_result = call i32 %method(%Foo* %tmp)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.154, i32 0, i32 0), i32 %getX_result)
  %tmp2 = load %Foo*, %Foo** %objptr1, align 8
  %vtable_ptr3 = getelementptr inbounds %Foo, %Foo* %tmp2, i32 0, i32 0
  %vtable4 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr3, align 8
  %mptr5 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable4, i32 0, i32 3
  %method6 = load i32 (%Bar*)*, i32 (%Bar*)** %mptr5, align 8
  %bitcast_obj = bitcast %Foo* %tmp2 to %Bar*
  %getY_result = call i32 %method6(%Bar* %bitcast_obj)
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.154, i32 0, i32 0), i32 %getY_result)
  ret void
}

define void @FooprintClassName(%Foo* %objptr) {
entry:
  %objptr1 = alloca %Foo*, align 8
  store %Foo* %objptr, %Foo** %objptr1, align 8
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.159, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @str.160, i32 0, i32 0))
  ret void
}

define i32 @Mainmain() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Node_vtable* getelementptr (%Node_vtable, %Node_vtable* null, i32 1) to i32))
  %Node_vtable = bitcast i8* %malloccall to %Node_vtable*
  %constr_ptr = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 0
  store %Node* (i32)* @Node, %Node* (i32)** %constr_ptr, align 8
  %constr_ptr1 = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 1
  store void (%Node*, i32)* @NodesetNext, void (%Node*, i32)** %constr_ptr1, align 8
  %constr_ptr2 = getelementptr inbounds %Node_vtable, %Node_vtable* %Node_vtable, i32 0, i32 2
  store void (%Node*, %Node*)* @NodesetNextNode, void (%Node*, %Node*)** %constr_ptr2, align 8
  %sgl = load %Node_vtable, %Node_vtable* %Node_vtable, align 8
  store %Node_vtable %sgl, %Node_vtable* @Node_vtable, align 8
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%LinkedList_vtable* getelementptr (%LinkedList_vtable, %LinkedList_vtable* null, i32 1) to i32))
  %LinkedList_vtable = bitcast i8* %malloccall3 to %LinkedList_vtable*
  %constr_ptr4 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 0
  store %LinkedList* ()* @LinkedList, %LinkedList* ()** %constr_ptr4, align 8
  %constr_ptr5 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 1
  store void (%LinkedList*, i32)* @LinkedListdeleteElem, void (%LinkedList*, i32)** %constr_ptr5, align 8
  %constr_ptr6 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 2
  store i32 (%LinkedList*, i32)* @LinkedListgetElem, i32 (%LinkedList*, i32)** %constr_ptr6, align 8
  %constr_ptr7 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 3
  store i32 (%LinkedList*)* @LinkedListgetSize, i32 (%LinkedList*)** %constr_ptr7, align 8
  %constr_ptr8 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 4
  store void (%LinkedList*, i32)* @LinkedListinsertElem, void (%LinkedList*, i32)** %constr_ptr8, align 8
  %constr_ptr9 = getelementptr inbounds %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, i32 0, i32 5
  store void (%LinkedList*)* @LinkedListprintLinkedList, void (%LinkedList*)** %constr_ptr9, align 8
  %sgl10 = load %LinkedList_vtable, %LinkedList_vtable* %LinkedList_vtable, align 8
  store %LinkedList_vtable %sgl10, %LinkedList_vtable* @LinkedList_vtable, align 8
  %malloccall11 = tail call i8* @malloc(i32 ptrtoint (%StringNode_vtable* getelementptr (%StringNode_vtable, %StringNode_vtable* null, i32 1) to i32))
  %StringNode_vtable = bitcast i8* %malloccall11 to %StringNode_vtable*
  %constr_ptr12 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, i32 0, i32 0
  store %StringNode* (i8*)* @StringNode, %StringNode* (i8*)** %constr_ptr12, align 8
  %constr_ptr13 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, i32 0, i32 1
  store void (%StringNode*, i8*)* @StringNodesetNext, void (%StringNode*, i8*)** %constr_ptr13, align 8
  %constr_ptr14 = getelementptr inbounds %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, i32 0, i32 2
  store void (%StringNode*, %StringNode*)* @StringNodesetNextNode, void (%StringNode*, %StringNode*)** %constr_ptr14, align 8
  %sgl15 = load %StringNode_vtable, %StringNode_vtable* %StringNode_vtable, align 8
  store %StringNode_vtable %sgl15, %StringNode_vtable* @StringNode_vtable, align 8
  %malloccall16 = tail call i8* @malloc(i32 ptrtoint (%StringLinkedList_vtable* getelementptr (%StringLinkedList_vtable, %StringLinkedList_vtable* null, i32 1) to i32))
  %StringLinkedList_vtable = bitcast i8* %malloccall16 to %StringLinkedList_vtable*
  %constr_ptr17 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 0
  store %StringLinkedList* ()* @StringLinkedList, %StringLinkedList* ()** %constr_ptr17, align 8
  %constr_ptr18 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 1
  store void (%StringLinkedList*, i32)* @StringLinkedListdeleteElem, void (%StringLinkedList*, i32)** %constr_ptr18, align 8
  %constr_ptr19 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 2
  store i8* (%StringLinkedList*, i32)* @StringLinkedListgetElem, i8* (%StringLinkedList*, i32)** %constr_ptr19, align 8
  %constr_ptr20 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 3
  store i32 (%StringLinkedList*)* @StringLinkedListgetSize, i32 (%StringLinkedList*)** %constr_ptr20, align 8
  %constr_ptr21 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 4
  store void (%StringLinkedList*, i8*)* @StringLinkedListinsertElem, void (%StringLinkedList*, i8*)** %constr_ptr21, align 8
  %constr_ptr22 = getelementptr inbounds %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, i32 0, i32 5
  store void (%StringLinkedList*)* @StringLinkedListprintStringLinkedList, void (%StringLinkedList*)** %constr_ptr22, align 8
  %sgl23 = load %StringLinkedList_vtable, %StringLinkedList_vtable* %StringLinkedList_vtable, align 8
  store %StringLinkedList_vtable %sgl23, %StringLinkedList_vtable* @StringLinkedList_vtable, align 8
  %malloccall24 = tail call i8* @malloc(i32 ptrtoint (%Stack_vtable* getelementptr (%Stack_vtable, %Stack_vtable* null, i32 1) to i32))
  %Stack_vtable = bitcast i8* %malloccall24 to %Stack_vtable*
  %constr_ptr25 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 0
  store %Stack* ()* @Stack, %Stack* ()** %constr_ptr25, align 8
  %constr_ptr26 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 1
  store void (%Stack*)* @Stackpop, void (%Stack*)** %constr_ptr26, align 8
  %constr_ptr27 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 2
  store void (%Stack*)* @StackprintStack, void (%Stack*)** %constr_ptr27, align 8
  %constr_ptr28 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 3
  store void (%Stack*, i32)* @Stackpush, void (%Stack*, i32)** %constr_ptr28, align 8
  %constr_ptr29 = getelementptr inbounds %Stack_vtable, %Stack_vtable* %Stack_vtable, i32 0, i32 4
  store i32 (%Stack*)* @Stacktop, i32 (%Stack*)** %constr_ptr29, align 8
  %sgl30 = load %Stack_vtable, %Stack_vtable* %Stack_vtable, align 8
  store %Stack_vtable %sgl30, %Stack_vtable* @Stack_vtable, align 8
  %malloccall31 = tail call i8* @malloc(i32 ptrtoint (%StringStack_vtable* getelementptr (%StringStack_vtable, %StringStack_vtable* null, i32 1) to i32))
  %StringStack_vtable = bitcast i8* %malloccall31 to %StringStack_vtable*
  %constr_ptr32 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 0
  store %StringStack* ()* @StringStack, %StringStack* ()** %constr_ptr32, align 8
  %constr_ptr33 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 1
  store void (%StringStack*)* @StringStackpop, void (%StringStack*)** %constr_ptr33, align 8
  %constr_ptr34 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 2
  store void (%StringStack*)* @StringStackprintStack, void (%StringStack*)** %constr_ptr34, align 8
  %constr_ptr35 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 3
  store void (%StringStack*, i8*)* @StringStackpush, void (%StringStack*, i8*)** %constr_ptr35, align 8
  %constr_ptr36 = getelementptr inbounds %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, i32 0, i32 4
  store i8* (%StringStack*)* @StringStacktop, i8* (%StringStack*)** %constr_ptr36, align 8
  %sgl37 = load %StringStack_vtable, %StringStack_vtable* %StringStack_vtable, align 8
  store %StringStack_vtable %sgl37, %StringStack_vtable* @StringStack_vtable, align 8
  %malloccall38 = tail call i8* @malloc(i32 ptrtoint (%Queue_vtable* getelementptr (%Queue_vtable, %Queue_vtable* null, i32 1) to i32))
  %Queue_vtable = bitcast i8* %malloccall38 to %Queue_vtable*
  %constr_ptr39 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 0
  store %Queue* ()* @Queue, %Queue* ()** %constr_ptr39, align 8
  %constr_ptr40 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 1
  store i32 (%Queue*)* @Queuedequeue, i32 (%Queue*)** %constr_ptr40, align 8
  %constr_ptr41 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 2
  store void (%Queue*)* @QueueprintQueue, void (%Queue*)** %constr_ptr41, align 8
  %constr_ptr42 = getelementptr inbounds %Queue_vtable, %Queue_vtable* %Queue_vtable, i32 0, i32 3
  store void (%Queue*, i32)* @Queuequeue, void (%Queue*, i32)** %constr_ptr42, align 8
  %sgl43 = load %Queue_vtable, %Queue_vtable* %Queue_vtable, align 8
  store %Queue_vtable %sgl43, %Queue_vtable* @Queue_vtable, align 8
  %malloccall44 = tail call i8* @malloc(i32 ptrtoint (%StringQueue_vtable* getelementptr (%StringQueue_vtable, %StringQueue_vtable* null, i32 1) to i32))
  %StringQueue_vtable = bitcast i8* %malloccall44 to %StringQueue_vtable*
  %constr_ptr45 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 0
  store %StringQueue* ()* @StringQueue, %StringQueue* ()** %constr_ptr45, align 8
  %constr_ptr46 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 1
  store i8* (%StringQueue*)* @StringQueuedequeue, i8* (%StringQueue*)** %constr_ptr46, align 8
  %constr_ptr47 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 2
  store void (%StringQueue*)* @StringQueueprintQueue, void (%StringQueue*)** %constr_ptr47, align 8
  %constr_ptr48 = getelementptr inbounds %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, i32 0, i32 3
  store void (%StringQueue*, i8*)* @StringQueuequeue, void (%StringQueue*, i8*)** %constr_ptr48, align 8
  %sgl49 = load %StringQueue_vtable, %StringQueue_vtable* %StringQueue_vtable, align 8
  store %StringQueue_vtable %sgl49, %StringQueue_vtable* @StringQueue_vtable, align 8
  %malloccall50 = tail call i8* @malloc(i32 ptrtoint (%Bar_vtable* getelementptr (%Bar_vtable, %Bar_vtable* null, i32 1) to i32))
  %Bar_vtable = bitcast i8* %malloccall50 to %Bar_vtable*
  %constr_ptr51 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 0
  store %Bar* ()* @Bar, %Bar* ()** %constr_ptr51, align 8
  %constr_ptr52 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 1
  store i32 (%Bar*)* @BargetY, i32 (%Bar*)** %constr_ptr52, align 8
  %constr_ptr53 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 2
  store void (%Bar*)* @BarprintClassName, void (%Bar*)** %constr_ptr53, align 8
  %constr_ptr54 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 3
  store void (%Bar*)* @BarprintHello, void (%Bar*)** %constr_ptr54, align 8
  %constr_ptr55 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 4
  store void (%Bar*)* @BarprintY, void (%Bar*)** %constr_ptr55, align 8
  %constr_ptr56 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %Bar_vtable, i32 0, i32 5
  store void (%Bar*, i32)* @BarsetY, void (%Bar*, i32)** %constr_ptr56, align 8
  %sgl57 = load %Bar_vtable, %Bar_vtable* %Bar_vtable, align 8
  store %Bar_vtable %sgl57, %Bar_vtable* @Bar_vtable, align 8
  %malloccall58 = tail call i8* @malloc(i32 ptrtoint (%Foo_vtable* getelementptr (%Foo_vtable, %Foo_vtable* null, i32 1) to i32))
  %Foo_vtable = bitcast i8* %malloccall58 to %Foo_vtable*
  %constr_ptr59 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 0
  store %Foo* (i32, i32)* @Foo, %Foo* (i32, i32)** %constr_ptr59, align 8
  %constr_ptr60 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 1
  store void (%Foo*)* @FoogetAll, void (%Foo*)** %constr_ptr60, align 8
  %constr_ptr61 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 2
  store i32 (%Foo*)* @FoogetX, i32 (%Foo*)** %constr_ptr61, align 8
  %constr_ptr62 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 3
  store i32 (%Bar*)* @BargetY, i32 (%Bar*)** %constr_ptr62, align 8
  %constr_ptr63 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 4
  store void (%Foo*)* @FooprintAll, void (%Foo*)** %constr_ptr63, align 8
  %constr_ptr64 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 5
  store void (%Foo*)* @FooprintClassName, void (%Foo*)** %constr_ptr64, align 8
  %constr_ptr65 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 6
  store void (%Bar*)* @BarprintHello, void (%Bar*)** %constr_ptr65, align 8
  %constr_ptr66 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 7
  store void (%Foo*)* @FooprintX, void (%Foo*)** %constr_ptr66, align 8
  %constr_ptr67 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 8
  store void (%Bar*)* @BarprintY, void (%Bar*)** %constr_ptr67, align 8
  %constr_ptr68 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 9
  store void (%Foo*, i32, i32)* @FoosetAll, void (%Foo*, i32, i32)** %constr_ptr68, align 8
  %constr_ptr69 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 10
  store void (%Foo*, i32)* @FoosetX, void (%Foo*, i32)** %constr_ptr69, align 8
  %constr_ptr70 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %Foo_vtable, i32 0, i32 11
  store void (%Bar*, i32)* @BarsetY, void (%Bar*, i32)** %constr_ptr70, align 8
  %sgl71 = load %Foo_vtable, %Foo_vtable* %Foo_vtable, align 8
  store %Foo_vtable %sgl71, %Foo_vtable* @Foo_vtable, align 8
  %malloccall72 = tail call i8* @malloc(i32 ptrtoint (%Main_vtable* getelementptr (%Main_vtable, %Main_vtable* null, i32 1) to i32))
  %Main_vtable = bitcast i8* %malloccall72 to %Main_vtable*
  %constr_ptr73 = getelementptr inbounds %Main_vtable, %Main_vtable* %Main_vtable, i32 0, i32 0
  store i32 ()* @Mainmain, i32 ()** %constr_ptr73, align 8
  %sgl74 = load %Main_vtable, %Main_vtable* %Main_vtable, align 8
  store %Main_vtable %sgl74, %Main_vtable* @Main_vtable, align 8
  %bar = alloca %Bar*, align 8
  %foo = alloca %Foo*, align 8
  %mptr = load %Bar* ()*, %Bar* ()** getelementptr inbounds (%Bar_vtable, %Bar_vtable* @Bar_vtable, i32 0, i32 0), align 8
  %Bar_constr_result = call %Bar* %mptr()
  store %Bar* %Bar_constr_result, %Bar** %bar, align 8
  %tmp = load %Bar*, %Bar** %bar, align 8
  %vtable_ptr = getelementptr inbounds %Bar, %Bar* %tmp, i32 0, i32 0
  %vtable = load %Bar_vtable*, %Bar_vtable** %vtable_ptr, align 8
  %mptr75 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %vtable, i32 0, i32 5
  %method = load void (%Bar*, i32)*, void (%Bar*, i32)** %mptr75, align 8
  call void %method(%Bar* %tmp, i32 1)
  %mptr76 = load %Foo* (i32, i32)*, %Foo* (i32, i32)** getelementptr inbounds (%Foo_vtable, %Foo_vtable* @Foo_vtable, i32 0, i32 0), align 8
  %Foo_constr_result = call %Foo* %mptr76(i32 2, i32 3)
  store %Foo* %Foo_constr_result, %Foo** %foo, align 8
  %tmp77 = load %Bar*, %Bar** %bar, align 8
  %vtable_ptr78 = getelementptr inbounds %Bar, %Bar* %tmp77, i32 0, i32 0
  %vtable79 = load %Bar_vtable*, %Bar_vtable** %vtable_ptr78, align 8
  %mptr80 = getelementptr inbounds %Bar_vtable, %Bar_vtable* %vtable79, i32 0, i32 4
  %method81 = load void (%Bar*)*, void (%Bar*)** %mptr80, align 8
  call void %method81(%Bar* %tmp77)
  %tmp82 = load %Foo*, %Foo** %foo, align 8
  %vtable_ptr83 = getelementptr inbounds %Foo, %Foo* %tmp82, i32 0, i32 0
  %vtable84 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr83, align 8
  %mptr85 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable84, i32 0, i32 4
  %method86 = load void (%Foo*)*, void (%Foo*)** %mptr85, align 8
  call void %method86(%Foo* %tmp82)
  %tmp87 = load %Foo*, %Foo** %foo, align 8
  %vtable_ptr88 = getelementptr inbounds %Foo, %Foo* %tmp87, i32 0, i32 0
  %vtable89 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr88, align 8
  %mptr90 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable89, i32 0, i32 9
  %method91 = load void (%Foo*, i32, i32)*, void (%Foo*, i32, i32)** %mptr90, align 8
  call void %method91(%Foo* %tmp87, i32 4, i32 5)
  %tmp92 = load %Foo*, %Foo** %foo, align 8
  %vtable_ptr93 = getelementptr inbounds %Foo, %Foo* %tmp92, i32 0, i32 0
  %vtable94 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr93, align 8
  %mptr95 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable94, i32 0, i32 1
  %method96 = load void (%Foo*)*, void (%Foo*)** %mptr95, align 8
  call void %method96(%Foo* %tmp92)
  %tmp97 = load %Foo*, %Foo** %foo, align 8
  %vtable_ptr98 = getelementptr inbounds %Foo, %Foo* %tmp97, i32 0, i32 0
  %vtable99 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr98, align 8
  %mptr100 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable99, i32 0, i32 5
  %method101 = load void (%Foo*)*, void (%Foo*)** %mptr100, align 8
  call void %method101(%Foo* %tmp97)
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
  store %Node_vtable* @Node_vtable, %Node_vtable** %vtable, align 8
  %field = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 1
  store %Node* null, %Node** %field, align 8
  %field1 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 2
  store i32 0, i32* %field1, align 4
  %data2 = alloca i32, align 4
  store i32 %data, i32* %data2, align 4
  %data3 = load i32, i32* %data2, align 4
  %field4 = getelementptr inbounds %Node, %Node* %Node, i32 0, i32 2
  store i32 %data3, i32* %field4, align 4
  ret %Node* %Node
}

define %LinkedList* @LinkedList() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%LinkedList* getelementptr (%LinkedList, %LinkedList* null, i32 1) to i32))
  %LinkedList = bitcast i8* %malloccall to %LinkedList*
  %vtable = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 0
  store %LinkedList_vtable* @LinkedList_vtable, %LinkedList_vtable** %vtable, align 8
  %field = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 1
  store i32 0, i32* %field, align 4
  %field1 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 2
  store %Node* null, %Node** %field1, align 8
  %field2 = getelementptr inbounds %LinkedList, %LinkedList* %LinkedList, i32 0, i32 1
  store i32 0, i32* %field2, align 4
  ret %LinkedList* %LinkedList
}

define %StringNode* @StringNode(i8* %data) {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%StringNode* getelementptr (%StringNode, %StringNode* null, i32 1) to i32))
  %StringNode = bitcast i8* %malloccall to %StringNode*
  %vtable = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 0
  store %StringNode_vtable* @StringNode_vtable, %StringNode_vtable** %vtable, align 8
  %field = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 1
  store %StringNode* null, %StringNode** %field, align 8
  %field1 = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str, i32 0, i32 0), i8** %field1, align 8
  %data2 = alloca i8*, align 8
  store i8* %data, i8** %data2, align 8
  %data3 = load i8*, i8** %data2, align 8
  %field4 = getelementptr inbounds %StringNode, %StringNode* %StringNode, i32 0, i32 2
  store i8* %data3, i8** %field4, align 8
  ret %StringNode* %StringNode
}

define %StringLinkedList* @StringLinkedList() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%StringLinkedList* getelementptr (%StringLinkedList, %StringLinkedList* null, i32 1) to i32))
  %StringLinkedList = bitcast i8* %malloccall to %StringLinkedList*
  %vtable = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 0
  store %StringLinkedList_vtable* @StringLinkedList_vtable, %StringLinkedList_vtable** %vtable, align 8
  %field = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 1
  store i32 0, i32* %field, align 4
  %field1 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 2
  store %StringNode* null, %StringNode** %field1, align 8
  %field2 = getelementptr inbounds %StringLinkedList, %StringLinkedList* %StringLinkedList, i32 0, i32 1
  store i32 0, i32* %field2, align 4
  ret %StringLinkedList* %StringLinkedList
}

define %Stack* @Stack() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Stack* getelementptr (%Stack, %Stack* null, i32 1) to i32))
  %Stack = bitcast i8* %malloccall to %Stack*
  %vtable = getelementptr inbounds %Stack, %Stack* %Stack, i32 0, i32 0
  store %Stack_vtable* @Stack_vtable, %Stack_vtable** %vtable, align 8
  %field = getelementptr inbounds %Stack, %Stack* %Stack, i32 0, i32 1
  store %LinkedList* null, %LinkedList** %field, align 8
  %mptr = load %LinkedList* ()*, %LinkedList* ()** getelementptr inbounds (%LinkedList_vtable, %LinkedList_vtable* @LinkedList_vtable, i32 0, i32 0), align 8
  %LinkedList_constr_result = call %LinkedList* %mptr()
  %field1 = getelementptr inbounds %Stack, %Stack* %Stack, i32 0, i32 1
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %field1, align 8
  ret %Stack* %Stack
}

define %StringStack* @StringStack() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%StringStack* getelementptr (%StringStack, %StringStack* null, i32 1) to i32))
  %StringStack = bitcast i8* %malloccall to %StringStack*
  %vtable = getelementptr inbounds %StringStack, %StringStack* %StringStack, i32 0, i32 0
  store %StringStack_vtable* @StringStack_vtable, %StringStack_vtable** %vtable, align 8
  %field = getelementptr inbounds %StringStack, %StringStack* %StringStack, i32 0, i32 1
  store %StringLinkedList* null, %StringLinkedList** %field, align 8
  %mptr = load %StringLinkedList* ()*, %StringLinkedList* ()** getelementptr inbounds (%StringLinkedList_vtable, %StringLinkedList_vtable* @StringLinkedList_vtable, i32 0, i32 0), align 8
  %StringLinkedList_constr_result = call %StringLinkedList* %mptr()
  %field1 = getelementptr inbounds %StringStack, %StringStack* %StringStack, i32 0, i32 1
  store %StringLinkedList* %StringLinkedList_constr_result, %StringLinkedList** %field1, align 8
  ret %StringStack* %StringStack
}

define %Queue* @Queue() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%Queue* getelementptr (%Queue, %Queue* null, i32 1) to i32))
  %Queue = bitcast i8* %malloccall to %Queue*
  %vtable = getelementptr inbounds %Queue, %Queue* %Queue, i32 0, i32 0
  store %Queue_vtable* @Queue_vtable, %Queue_vtable** %vtable, align 8
  %field = getelementptr inbounds %Queue, %Queue* %Queue, i32 0, i32 1
  store %LinkedList* null, %LinkedList** %field, align 8
  %mptr = load %LinkedList* ()*, %LinkedList* ()** getelementptr inbounds (%LinkedList_vtable, %LinkedList_vtable* @LinkedList_vtable, i32 0, i32 0), align 8
  %LinkedList_constr_result = call %LinkedList* %mptr()
  %field1 = getelementptr inbounds %Queue, %Queue* %Queue, i32 0, i32 1
  store %LinkedList* %LinkedList_constr_result, %LinkedList** %field1, align 8
  ret %Queue* %Queue
}

define %StringQueue* @StringQueue() {
entry:
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%StringQueue* getelementptr (%StringQueue, %StringQueue* null, i32 1) to i32))
  %StringQueue = bitcast i8* %malloccall to %StringQueue*
  %vtable = getelementptr inbounds %StringQueue, %StringQueue* %StringQueue, i32 0, i32 0
  store %StringQueue_vtable* @StringQueue_vtable, %StringQueue_vtable** %vtable, align 8
  %field = getelementptr inbounds %StringQueue, %StringQueue* %StringQueue, i32 0, i32 1
  store %StringLinkedList* null, %StringLinkedList** %field, align 8
  %mptr = load %StringLinkedList* ()*, %StringLinkedList* ()** getelementptr inbounds (%StringLinkedList_vtable, %StringLinkedList_vtable* @StringLinkedList_vtable, i32 0, i32 0), align 8
  %StringLinkedList_constr_result = call %StringLinkedList* %mptr()
  %field1 = getelementptr inbounds %StringQueue, %StringQueue* %StringQueue, i32 0, i32 1
  store %StringLinkedList* %StringLinkedList_constr_result, %StringLinkedList** %field1, align 8
  ret %StringQueue* %StringQueue
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

define %Foo* @Foo(i32 %x, i32 %y) {
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
  %y4 = alloca i32, align 4
  store i32 %y, i32* %y4, align 4
  %x5 = load i32, i32* %x3, align 4
  %field6 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 3
  store i32 %x5, i32* %field6, align 4
  %y7 = load i32, i32* %y4, align 4
  %field8 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 1
  store i32 %y7, i32* %field8, align 4
  %vtable_ptr = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  %vtable9 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr, align 8
  %mptr = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable9, i32 0, i32 6
  %method = load void (%Bar*)*, void (%Bar*)** %mptr, align 8
  %bitcast_obj = bitcast %Foo* %Foo to %Bar*
  call void %method(%Bar* %bitcast_obj)
  %vtable_ptr10 = getelementptr inbounds %Foo, %Foo* %Foo, i32 0, i32 0
  %vtable11 = load %Foo_vtable*, %Foo_vtable** %vtable_ptr10, align 8
  %mptr12 = getelementptr inbounds %Foo_vtable, %Foo_vtable* %vtable11, i32 0, i32 5
  %method13 = load void (%Foo*)*, void (%Foo*)** %mptr12, align 8
  call void %method13(%Foo* %Foo)
  ret %Foo* %Foo
}

declare noalias i8* @malloc(i32)
