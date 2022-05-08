	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_NodesetNext                    ## -- Begin function NodesetNext
	.p2align	4, 0x90
_NodesetNext:                           ## @NodesetNext
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	movl	%esi, %edi
	callq	*_Node_vtable(%rip)
	movq	%rax, 8(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_NodesetNextNode                ## -- Begin function NodesetNextNode
	.p2align	4, 0x90
_NodesetNextNode:                       ## @NodesetNextNode
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	%rsi, 8(%rdi)
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_LinkedListinsertElem           ## -- Begin function LinkedListinsertElem
	.p2align	4, 0x90
_LinkedListinsertElem:                  ## @LinkedListinsertElem
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	cmpl	$0, 8(%rdi)
	je	LBB2_1
## %bb.2:                               ## %else
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 24(%rsp)
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
LBB2_3:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movl	8(%rax), %eax
	decl	%eax
	cmpl	%eax, 8(%rsp)
	jge	LBB2_5
## %bb.4:                               ## %while_body
                                        ##   in Loop: Header=BB2_3 Depth=1
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	incl	8(%rsp)
	jmp	LBB2_3
LBB2_5:                                 ## %merge19
	movq	24(%rsp), %rdi
	movq	(%rdi), %rax
	movl	12(%rsp), %esi
	callq	*8(%rax)
	jmp	LBB2_6
LBB2_1:                                 ## %then
	movq	16(%rsp), %rbx
	movl	12(%rsp), %edi
	callq	*_Node_vtable(%rip)
	movq	%rax, 16(%rbx)
LBB2_6:                                 ## %merge
	movq	16(%rsp), %rax
	incl	8(%rax)
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_LinkedListgetSize              ## -- Begin function LinkedListgetSize
	.p2align	4, 0x90
_LinkedListgetSize:                     ## @LinkedListgetSize
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	8(%rdi), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_LinkedListprintLinkedList      ## -- Begin function LinkedListprintLinkedList
	.p2align	4, 0x90
_LinkedListprintLinkedList:             ## @LinkedListprintLinkedList
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsp)
	movl	$0, 12(%rsp)
	leaq	L_fmt.45(%rip), %rbx
	.p2align	4, 0x90
LBB4_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	movq	24(%rsp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB4_3
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB4_1 Depth=1
	movq	16(%rsp), %rax
	movl	16(%rax), %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	incl	12(%rsp)
	jmp	LBB4_1
LBB4_3:                                 ## %merge
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_LinkedListdeleteElem           ## -- Begin function LinkedListdeleteElem
	.p2align	4, 0x90
_LinkedListdeleteElem:                  ## @LinkedListdeleteElem
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	movl	%esi, 36(%rsp)
	testl	%esi, %esi
	je	LBB5_1
## %bb.3:                               ## %else
	movq	16(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
LBB5_4:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	movq	16(%rsp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB5_8
## %bb.5:                               ## %while_body
                                        ##   in Loop: Header=BB5_4 Depth=1
	movl	36(%rsp), %eax
	decl	%eax
	cmpl	%eax, 12(%rsp)
	je	LBB5_6
## %bb.7:                               ## %else40
                                        ##   in Loop: Header=BB5_4 Depth=1
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	incl	12(%rsp)
	jmp	LBB5_4
LBB5_1:                                 ## %then
	movq	16(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	8(%rcx), %rcx
	movq	%rcx, 16(%rax)
	jmp	LBB5_2
LBB5_8:                                 ## %merge52
	leaq	L_fmt.50(%rip), %rdi
	leaq	L_str.51(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	addq	$56, %rsp
	retq
LBB5_6:                                 ## %then28
	movq	24(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rsi, 40(%rsp)
	movq	48(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*16(%rax)
LBB5_2:                                 ## %then
	movq	16(%rsp), %rax
	decl	8(%rax)
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_LinkedListgetElem              ## -- Begin function LinkedListgetElem
	.p2align	4, 0x90
_LinkedListgetElem:                     ## @LinkedListgetElem
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, -24(%rsp)
	movl	$0, -28(%rsp)
	.p2align	4, 0x90
LBB6_1:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	-28(%rsp), %eax
	cmpl	-12(%rsp), %eax
	jge	LBB6_3
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rsp)
	incl	-28(%rsp)
	jmp	LBB6_1
LBB6_3:                                 ## %merge
	movq	-24(%rsp), %rax
	movl	16(%rax), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringNodesetNext              ## -- Begin function StringNodesetNext
	.p2align	4, 0x90
_StringNodesetNext:                     ## @StringNodesetNext
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	%rsi, %rdi
	callq	*_StringNode_vtable(%rip)
	movq	%rax, 8(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringNodesetNextNode          ## -- Begin function StringNodesetNextNode
	.p2align	4, 0x90
_StringNodesetNextNode:                 ## @StringNodesetNextNode
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	%rsi, 8(%rdi)
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringLinkedListinsertElem     ## -- Begin function StringLinkedListinsertElem
	.p2align	4, 0x90
_StringLinkedListinsertElem:            ## @StringLinkedListinsertElem
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%rdi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	cmpl	$0, 8(%rdi)
	je	LBB9_1
## %bb.2:                               ## %else
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movl	$0, 4(%rsp)
	.p2align	4, 0x90
LBB9_3:                                 ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movl	8(%rax), %eax
	decl	%eax
	cmpl	%eax, 4(%rsp)
	jge	LBB9_5
## %bb.4:                               ## %while_body
                                        ##   in Loop: Header=BB9_3 Depth=1
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	incl	4(%rsp)
	jmp	LBB9_3
LBB9_5:                                 ## %merge19
	movq	16(%rsp), %rdi
	movq	(%rdi), %rax
	movq	24(%rsp), %rsi
	callq	*8(%rax)
	jmp	LBB9_6
LBB9_1:                                 ## %then
	movq	8(%rsp), %rbx
	movq	24(%rsp), %rdi
	callq	*_StringNode_vtable(%rip)
	movq	%rax, 16(%rbx)
LBB9_6:                                 ## %merge
	movq	8(%rsp), %rax
	incl	8(%rax)
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringLinkedListgetSize        ## -- Begin function StringLinkedListgetSize
	.p2align	4, 0x90
_StringLinkedListgetSize:               ## @StringLinkedListgetSize
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	8(%rdi), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringLinkedListprintStringLinkedList ## -- Begin function StringLinkedListprintStringLinkedList
	.p2align	4, 0x90
_StringLinkedListprintStringLinkedList: ## @StringLinkedListprintStringLinkedList
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsp)
	movl	$0, 12(%rsp)
	leaq	L_fmt.69(%rip), %rbx
	.p2align	4, 0x90
LBB11_1:                                ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	movq	24(%rsp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB11_3
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB11_1 Depth=1
	movq	16(%rsp), %rax
	movq	16(%rax), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	incl	12(%rsp)
	jmp	LBB11_1
LBB11_3:                                ## %merge
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringLinkedListdeleteElem     ## -- Begin function StringLinkedListdeleteElem
	.p2align	4, 0x90
_StringLinkedListdeleteElem:            ## @StringLinkedListdeleteElem
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	movl	%esi, 36(%rsp)
	testl	%esi, %esi
	je	LBB12_1
## %bb.3:                               ## %else
	movq	16(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
LBB12_4:                                ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	movq	16(%rsp), %rcx
	cmpl	8(%rcx), %eax
	jge	LBB12_8
## %bb.5:                               ## %while_body
                                        ##   in Loop: Header=BB12_4 Depth=1
	movl	36(%rsp), %eax
	decl	%eax
	cmpl	%eax, 12(%rsp)
	je	LBB12_6
## %bb.7:                               ## %else40
                                        ##   in Loop: Header=BB12_4 Depth=1
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	incl	12(%rsp)
	jmp	LBB12_4
LBB12_1:                                ## %then
	movq	16(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	8(%rcx), %rcx
	movq	%rcx, 16(%rax)
	jmp	LBB12_2
LBB12_8:                                ## %merge52
	leaq	L_fmt.72(%rip), %rdi
	leaq	L_str.73(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	addq	$56, %rsp
	retq
LBB12_6:                                ## %then28
	movq	24(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rsi, 40(%rsp)
	movq	48(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*16(%rax)
LBB12_2:                                ## %then
	movq	16(%rsp), %rax
	decl	8(%rax)
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringLinkedListgetElem        ## -- Begin function StringLinkedListgetElem
	.p2align	4, 0x90
_StringLinkedListgetElem:               ## @StringLinkedListgetElem
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, -24(%rsp)
	movl	$0, -28(%rsp)
	.p2align	4, 0x90
LBB13_1:                                ## %while
                                        ## =>This Inner Loop Header: Depth=1
	movl	-28(%rsp), %eax
	cmpl	-12(%rsp), %eax
	jge	LBB13_3
## %bb.2:                               ## %while_body
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rsp)
	incl	-28(%rsp)
	jmp	LBB13_1
LBB13_3:                                ## %merge
	movq	-24(%rsp), %rax
	movq	16(%rax), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Stackpush                      ## -- Begin function Stackpush
	.p2align	4, 0x90
_Stackpush:                             ## @Stackpush
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%esi, 4(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*32(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Stacktop                       ## -- Begin function Stacktop
	.p2align	4, 0x90
_Stacktop:                              ## @Stacktop
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	LBB15_2
## %bb.1:                               ## %then
	movq	(%rsp), %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %r14
	movq	%rbx, %rdi
	callq	*24(%rax)
                                        ## kill: def $eax killed $eax def $rax
	leal	-1(%rax), %esi
	movq	%rbx, %rdi
	callq	*%r14
	movl	%eax, 12(%rsp)
	jmp	LBB15_3
LBB15_2:                                ## %else
	leaq	L_fmt.82(%rip), %rdi
	leaq	L_str.83(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$-1, %eax
LBB15_3:                                ## %else
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Stackpop                       ## -- Begin function Stackpop
	.p2align	4, 0x90
_Stackpop:                              ## @Stackpop
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	LBB16_2
## %bb.1:                               ## %then
	movq	8(%rsp), %rbx
	movq	(%rbx), %rax
	movq	8(%rax), %r14
	movq	%rbx, %rdi
	callq	*24(%rax)
                                        ## kill: def $eax killed $eax def $rax
	leal	-1(%rax), %esi
	movq	%rbx, %rdi
	callq	*%r14
LBB16_2:                                ## %merge
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StackprintStack                ## -- Begin function StackprintStack
	.p2align	4, 0x90
_StackprintStack:                       ## @StackprintStack
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*40(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringStackpush                ## -- Begin function StringStackpush
	.p2align	4, 0x90
_StringStackpush:                       ## @StringStackpush
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	callq	*32(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringStacktop                 ## -- Begin function StringStacktop
	.p2align	4, 0x90
_StringStacktop:                        ## @StringStacktop
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	LBB19_2
## %bb.1:                               ## %then
	movq	(%rsp), %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %r14
	movq	%rbx, %rdi
	callq	*24(%rax)
                                        ## kill: def $eax killed $eax def $rax
	leal	-1(%rax), %esi
	movq	%rbx, %rdi
	callq	*%r14
	movq	%rax, 8(%rsp)
	jmp	LBB19_3
LBB19_2:                                ## %else
	leaq	L_fmt.95(%rip), %rdi
	leaq	L_str.96(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_str.97(%rip), %rax
LBB19_3:                                ## %else
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringStackpop                 ## -- Begin function StringStackpop
	.p2align	4, 0x90
_StringStackpop:                        ## @StringStackpop
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	LBB20_2
## %bb.1:                               ## %then
	movq	8(%rsp), %rbx
	movq	(%rbx), %rax
	movq	8(%rax), %r14
	movq	%rbx, %rdi
	callq	*24(%rax)
                                        ## kill: def $eax killed $eax def $rax
	leal	-1(%rax), %esi
	movq	%rbx, %rdi
	callq	*%r14
LBB20_2:                                ## %merge
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringStackprintStack          ## -- Begin function StringStackprintStack
	.p2align	4, 0x90
_StringStackprintStack:                 ## @StringStackprintStack
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*40(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Queuequeue                     ## -- Begin function Queuequeue
	.p2align	4, 0x90
_Queuequeue:                            ## @Queuequeue
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%esi, 4(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*32(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Queuedequeue                   ## -- Begin function Queuedequeue
	.p2align	4, 0x90
_Queuedequeue:                          ## @Queuedequeue
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	LBB23_2
## %bb.1:                               ## %then
	movq	8(%rsp), %rdi
	movq	(%rdi), %rax
	xorl	%esi, %esi
	callq	*16(%rax)
	movl	%eax, 4(%rsp)
	movq	8(%rsp), %rdi
	movq	(%rdi), %rax
	xorl	%esi, %esi
	callq	*8(%rax)
	movl	4(%rsp), %eax
	addq	$24, %rsp
	retq
LBB23_2:                                ## %else
	leaq	L_fmt.109(%rip), %rdi
	leaq	L_str.110(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$-1, %eax
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_QueueprintQueue                ## -- Begin function QueueprintQueue
	.p2align	4, 0x90
_QueueprintQueue:                       ## @QueueprintQueue
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*40(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringQueuequeue               ## -- Begin function StringQueuequeue
	.p2align	4, 0x90
_StringQueuequeue:                      ## @StringQueuequeue
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	callq	*32(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringQueuedequeue             ## -- Begin function StringQueuedequeue
	.p2align	4, 0x90
_StringQueuedequeue:                    ## @StringQueuedequeue
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	LBB26_2
## %bb.1:                               ## %then
	movq	(%rsp), %rdi
	movq	(%rdi), %rax
	xorl	%esi, %esi
	callq	*16(%rax)
	movq	%rax, 8(%rsp)
	movq	(%rsp), %rdi
	movq	(%rdi), %rax
	xorl	%esi, %esi
	callq	*8(%rax)
	movq	8(%rsp), %rax
	addq	$24, %rsp
	retq
LBB26_2:                                ## %else
	leaq	L_fmt.119(%rip), %rdi
	leaq	L_str.120(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_str.121(%rip), %rax
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringQueueprintQueue          ## -- Begin function StringQueueprintQueue
	.p2align	4, 0x90
_StringQueueprintQueue:                 ## @StringQueueprintQueue
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	8(%rdi), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	callq	*40(%rax)
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_MooprintZ                      ## -- Begin function MooprintZ
	.p2align	4, 0x90
_MooprintZ:                             ## @MooprintZ
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	8(%rdi), %esi
	leaq	L_fmt.125(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_MoosetZ                        ## -- Begin function MoosetZ
	.p2align	4, 0x90
_MoosetZ:                               ## @MoosetZ
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movl	%esi, 8(%rdi)
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_MooprintClassName              ## -- Begin function MooprintClassName
	.p2align	4, 0x90
_MooprintClassName:                     ## @MooprintClassName
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	leaq	L_fmt.133(%rip), %rdi
	leaq	L_str.134(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_BarprintY                      ## -- Begin function BarprintY
	.p2align	4, 0x90
_BarprintY:                             ## @BarprintY
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	16(%rdi), %esi
	leaq	L_fmt.135(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_BarsetY                        ## -- Begin function BarsetY
	.p2align	4, 0x90
_BarsetY:                               ## @BarsetY
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movl	%esi, 16(%rdi)
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_BarprintClassName              ## -- Begin function BarprintClassName
	.p2align	4, 0x90
_BarprintClassName:                     ## @BarprintClassName
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	leaq	L_fmt.143(%rip), %rdi
	leaq	L_str.144(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_FoogetX                        ## -- Begin function FoogetX
	.p2align	4, 0x90
_FoogetX:                               ## @FoogetX
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movl	28(%rdi), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_FooprintX                      ## -- Begin function FooprintX
	.p2align	4, 0x90
_FooprintX:                             ## @FooprintX
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	28(%rdi), %esi
	leaq	L_fmt.148(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_FooprintAll                    ## -- Begin function FooprintAll
	.p2align	4, 0x90
_FooprintAll:                           ## @FooprintAll
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	callq	*32(%rax)
	movq	(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*40(%rax)
	movq	(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*48(%rax)
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_FooprintClassName              ## -- Begin function FooprintClassName
	.p2align	4, 0x90
_FooprintClassName:                     ## @FooprintClassName
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	leaq	L_fmt.156(%rip), %rdi
	leaq	L_str.157(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*72(%rax)
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Footest                        ## -- Begin function Footest
	.p2align	4, 0x90
_Footest:                               ## @Footest
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	leaq	L_fmt.160(%rip), %rdi
	leaq	L_str.161(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Mainmain                       ## -- Begin function Mainmain
	.p2align	4, 0x90
_Mainmain:                              ## @Mainmain
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$24, %edi
	callq	_malloc
	leaq	_Node(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_NodesetNext(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_NodesetNextNode(%rip), %rsi
	movq	%rsi, 16(%rax)
	movq	%rcx, _Node_vtable(%rip)
	movq	%rdx, _Node_vtable+8(%rip)
	movq	%rsi, _Node_vtable+16(%rip)
	movl	$48, %edi
	callq	_malloc
	leaq	_LinkedList(%rip), %r8
	movq	%r8, (%rax)
	leaq	_LinkedListdeleteElem(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_LinkedListgetElem(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_LinkedListgetSize(%rip), %rdi
	movq	%rdi, 24(%rax)
	leaq	_LinkedListinsertElem(%rip), %rbx
	movq	%rbx, 32(%rax)
	leaq	_LinkedListprintLinkedList(%rip), %rcx
	movq	%rcx, 40(%rax)
	movq	%r8, _LinkedList_vtable(%rip)
	movq	%rdx, _LinkedList_vtable+8(%rip)
	movq	%rsi, _LinkedList_vtable+16(%rip)
	movq	%rdi, _LinkedList_vtable+24(%rip)
	movq	%rbx, _LinkedList_vtable+32(%rip)
	movq	%rcx, _LinkedList_vtable+40(%rip)
	movl	$24, %edi
	callq	_malloc
	leaq	_StringNode(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_StringNodesetNext(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_StringNodesetNextNode(%rip), %rsi
	movq	%rsi, 16(%rax)
	movq	%rcx, _StringNode_vtable(%rip)
	movq	%rdx, _StringNode_vtable+8(%rip)
	movq	%rsi, _StringNode_vtable+16(%rip)
	movl	$48, %edi
	callq	_malloc
	leaq	_StringLinkedList(%rip), %r8
	movq	%r8, (%rax)
	leaq	_StringLinkedListdeleteElem(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_StringLinkedListgetElem(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_StringLinkedListgetSize(%rip), %rdi
	movq	%rdi, 24(%rax)
	leaq	_StringLinkedListinsertElem(%rip), %rbx
	movq	%rbx, 32(%rax)
	leaq	_StringLinkedListprintStringLinkedList(%rip), %rcx
	movq	%rcx, 40(%rax)
	movq	%r8, _StringLinkedList_vtable(%rip)
	movq	%rdx, _StringLinkedList_vtable+8(%rip)
	movq	%rsi, _StringLinkedList_vtable+16(%rip)
	movq	%rdi, _StringLinkedList_vtable+24(%rip)
	movq	%rbx, _StringLinkedList_vtable+32(%rip)
	movq	%rcx, _StringLinkedList_vtable+40(%rip)
	movl	$40, %edi
	callq	_malloc
	leaq	_Stack(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_Stackpop(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_StackprintStack(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_Stackpush(%rip), %rdi
	movq	%rdi, 24(%rax)
	leaq	_Stacktop(%rip), %rbx
	movq	%rbx, 32(%rax)
	movq	%rcx, _Stack_vtable(%rip)
	movq	%rdx, _Stack_vtable+8(%rip)
	movq	%rsi, _Stack_vtable+16(%rip)
	movq	%rdi, _Stack_vtable+24(%rip)
	movq	%rbx, _Stack_vtable+32(%rip)
	movl	$40, %edi
	callq	_malloc
	leaq	_StringStack(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_StringStackpop(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_StringStackprintStack(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_StringStackpush(%rip), %rdi
	movq	%rdi, 24(%rax)
	leaq	_StringStacktop(%rip), %rbx
	movq	%rbx, 32(%rax)
	movq	%rcx, _StringStack_vtable(%rip)
	movq	%rdx, _StringStack_vtable+8(%rip)
	movq	%rsi, _StringStack_vtable+16(%rip)
	movq	%rdi, _StringStack_vtable+24(%rip)
	movq	%rbx, _StringStack_vtable+32(%rip)
	movl	$32, %edi
	callq	_malloc
	leaq	_Queue(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_Queuedequeue(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_QueueprintQueue(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_Queuequeue(%rip), %rdi
	movq	%rdi, 24(%rax)
	movq	%rcx, _Queue_vtable(%rip)
	movq	%rdx, _Queue_vtable+8(%rip)
	movq	%rsi, _Queue_vtable+16(%rip)
	movq	%rdi, _Queue_vtable+24(%rip)
	movl	$32, %edi
	callq	_malloc
	leaq	_StringQueue(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_StringQueuedequeue(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_StringQueueprintQueue(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_StringQueuequeue(%rip), %rdi
	movq	%rdi, 24(%rax)
	movq	%rcx, _StringQueue_vtable(%rip)
	movq	%rdx, _StringQueue_vtable+8(%rip)
	movq	%rsi, _StringQueue_vtable+16(%rip)
	movq	%rdi, _StringQueue_vtable+24(%rip)
	movl	$32, %edi
	callq	_malloc
	leaq	_Moo(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_MooprintClassName(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_MooprintZ(%rip), %rbx
	movq	%rbx, 16(%rax)
	leaq	_MoosetZ(%rip), %r14
	movq	%r14, 24(%rax)
	movq	%rcx, _Moo_vtable(%rip)
	movq	%rdx, _Moo_vtable+8(%rip)
	movq	%rbx, _Moo_vtable+16(%rip)
	movq	%r14, _Moo_vtable+24(%rip)
	movl	$48, %edi
	callq	_malloc
	leaq	_Bar(%rip), %rcx
	movq	%rcx, (%rax)
	leaq	_BarprintClassName(%rip), %rdx
	movq	%rdx, 8(%rax)
	leaq	_BarprintY(%rip), %r15
	movq	%r15, 16(%rax)
	movq	%rbx, 24(%rax)
	leaq	_BarsetY(%rip), %r12
	movq	%r12, 32(%rax)
	movq	%r14, 40(%rax)
	movq	%rcx, _Bar_vtable(%rip)
	movq	%rdx, _Bar_vtable+8(%rip)
	movq	%r15, _Bar_vtable+16(%rip)
	movq	%rbx, _Bar_vtable+24(%rip)
	movq	%r12, _Bar_vtable+32(%rip)
	movq	%r14, _Bar_vtable+40(%rip)
	movl	$80, %edi
	callq	_malloc
	leaq	_Foo(%rip), %r8
	movq	%r8, (%rax)
	leaq	_FoogetX(%rip), %r9
	movq	%r9, 8(%rax)
	leaq	_FooprintAll(%rip), %rsi
	movq	%rsi, 16(%rax)
	leaq	_FooprintClassName(%rip), %rdi
	movq	%rdi, 24(%rax)
	leaq	_FooprintX(%rip), %rcx
	movq	%rcx, 32(%rax)
	movq	%r15, 40(%rax)
	movq	%rbx, 48(%rax)
	movq	%r12, 56(%rax)
	movq	%r14, 64(%rax)
	leaq	_Footest(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	%r8, _Foo_vtable(%rip)
	movq	%r9, _Foo_vtable+8(%rip)
	movq	%rsi, _Foo_vtable+16(%rip)
	movq	%rdi, _Foo_vtable+24(%rip)
	movq	%rcx, _Foo_vtable+32(%rip)
	movq	%r15, _Foo_vtable+40(%rip)
	movq	%rbx, _Foo_vtable+48(%rip)
	movq	%r12, _Foo_vtable+56(%rip)
	movq	%r14, _Foo_vtable+64(%rip)
	movq	%rdx, _Foo_vtable+72(%rip)
	movl	$8, %edi
	callq	_malloc
	leaq	_Mainmain(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rcx, _Main_vtable(%rip)
	movl	$45, %edi
	callq	*_Foo_vtable(%rip)
	movq	%rax, 8(%rsp)
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*32(%rcx)
	leaq	L_fmt.164(%rip), %rdi
	leaq	L_str.165(%rip), %rsi
	xorl	%eax, %eax
	callq	_printf
	callq	*_LinkedList_vtable(%rip)
	movq	%rax, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movl	$45, %esi
	callq	*32(%rcx)
	movq	16(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*40(%rax)
	movl	$10, %edi
	callq	*_Foo_vtable(%rip)
	movq	%rax, 8(%rsp)
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*16(%rcx)
	movq	8(%rsp), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_Mainmain
	xorl	%eax, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Node                           ## -- Begin function Node
	.p2align	4, 0x90
_Node:                                  ## @Node
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$24, %edi
	callq	_malloc
	leaq	_Node_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	movl	%ebx, 12(%rsp)
	movl	%ebx, 16(%rax)
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_LinkedList                     ## -- Begin function LinkedList
	.p2align	4, 0x90
_LinkedList:                            ## @LinkedList
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$24, %edi
	callq	_malloc
	leaq	_LinkedList_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movl	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringNode                     ## -- Begin function StringNode
	.p2align	4, 0x90
_StringNode:                            ## @StringNode
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	_malloc
	leaq	_StringNode_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	leaq	L_str(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%rbx, 8(%rsp)
	movq	%rbx, 16(%rax)
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringLinkedList               ## -- Begin function StringLinkedList
	.p2align	4, 0x90
_StringLinkedList:                      ## @StringLinkedList
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$24, %edi
	callq	_malloc
	leaq	_StringLinkedList_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movl	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Stack                          ## -- Begin function Stack
	.p2align	4, 0x90
_Stack:                                 ## @Stack
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	_Stack_vtable(%rip), %rax
	movq	%rax, (%rbx)
	movq	$0, 8(%rbx)
	callq	*_LinkedList_vtable(%rip)
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringStack                    ## -- Begin function StringStack
	.p2align	4, 0x90
_StringStack:                           ## @StringStack
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	_StringStack_vtable(%rip), %rax
	movq	%rax, (%rbx)
	movq	$0, 8(%rbx)
	callq	*_StringLinkedList_vtable(%rip)
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Queue                          ## -- Begin function Queue
	.p2align	4, 0x90
_Queue:                                 ## @Queue
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	_Queue_vtable(%rip), %rax
	movq	%rax, (%rbx)
	movq	$0, 8(%rbx)
	callq	*_LinkedList_vtable(%rip)
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_StringQueue                    ## -- Begin function StringQueue
	.p2align	4, 0x90
_StringQueue:                           ## @StringQueue
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$16, %edi
	callq	_malloc
	movq	%rax, %rbx
	leaq	_StringQueue_vtable(%rip), %rax
	movq	%rax, (%rbx)
	movq	$0, 8(%rbx)
	callq	*_StringLinkedList_vtable(%rip)
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Moo                            ## -- Begin function Moo
	.p2align	4, 0x90
_Moo:                                   ## @Moo
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$16, %edi
	callq	_malloc
	leaq	_Moo_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movl	$0, 8(%rax)
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Bar                            ## -- Begin function Bar
	.p2align	4, 0x90
_Bar:                                   ## @Bar
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$24, %edi
	callq	_malloc
	leaq	_Bar_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Foo                            ## -- Begin function Foo
	.p2align	4, 0x90
_Foo:                                   ## @Foo
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$32, %edi
	callq	_malloc
	leaq	_Foo_vtable(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movl	%ebx, 12(%rsp)
	movl	%ebx, 28(%rax)
	movl	$20, 16(%rax)
	movl	$30, 8(%rax)
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_main_ptr                       ## @main_ptr
	.p2align	3
_main_ptr:
	.quad	_main

	.globl	_Node_vtable                    ## @Node_vtable
	.p2align	4
_Node_vtable:
	.quad	_Node
	.quad	_NodesetNext
	.quad	_NodesetNextNode

	.globl	_LinkedList_vtable              ## @LinkedList_vtable
	.p2align	4
_LinkedList_vtable:
	.quad	_LinkedList
	.quad	_LinkedListdeleteElem
	.quad	_LinkedListgetElem
	.quad	_LinkedListgetSize
	.quad	_LinkedListinsertElem
	.quad	_LinkedListprintLinkedList

	.globl	_StringNode_vtable              ## @StringNode_vtable
	.p2align	4
_StringNode_vtable:
	.quad	_StringNode
	.quad	_StringNodesetNext
	.quad	_StringNodesetNextNode

	.globl	_StringLinkedList_vtable        ## @StringLinkedList_vtable
	.p2align	4
_StringLinkedList_vtable:
	.quad	_StringLinkedList
	.quad	_StringLinkedListdeleteElem
	.quad	_StringLinkedListgetElem
	.quad	_StringLinkedListgetSize
	.quad	_StringLinkedListinsertElem
	.quad	_StringLinkedListprintStringLinkedList

	.globl	_Stack_vtable                   ## @Stack_vtable
	.p2align	4
_Stack_vtable:
	.quad	_Stack
	.quad	_Stackpop
	.quad	_StackprintStack
	.quad	_Stackpush
	.quad	_Stacktop

	.globl	_StringStack_vtable             ## @StringStack_vtable
	.p2align	4
_StringStack_vtable:
	.quad	_StringStack
	.quad	_StringStackpop
	.quad	_StringStackprintStack
	.quad	_StringStackpush
	.quad	_StringStacktop

	.globl	_Queue_vtable                   ## @Queue_vtable
	.p2align	4
_Queue_vtable:
	.quad	_Queue
	.quad	_Queuedequeue
	.quad	_QueueprintQueue
	.quad	_Queuequeue

	.globl	_StringQueue_vtable             ## @StringQueue_vtable
	.p2align	4
_StringQueue_vtable:
	.quad	_StringQueue
	.quad	_StringQueuedequeue
	.quad	_StringQueueprintQueue
	.quad	_StringQueuequeue

	.globl	_Moo_vtable                     ## @Moo_vtable
	.p2align	4
_Moo_vtable:
	.quad	_Moo
	.quad	_MooprintClassName
	.quad	_MooprintZ
	.quad	_MoosetZ

	.globl	_Bar_vtable                     ## @Bar_vtable
	.p2align	4
_Bar_vtable:
	.quad	_Bar
	.quad	_BarprintClassName
	.quad	_BarprintY
	.quad	_MooprintZ
	.quad	_BarsetY
	.quad	_MoosetZ

	.globl	_Foo_vtable                     ## @Foo_vtable
	.p2align	4
_Foo_vtable:
	.quad	_Foo
	.quad	_FoogetX
	.quad	_FooprintAll
	.quad	_FooprintClassName
	.quad	_FooprintX
	.quad	_BarprintY
	.quad	_MooprintZ
	.quad	_BarsetY
	.quad	_MoosetZ
	.quad	_Footest

	.globl	_Main_vtable                    ## @Main_vtable
	.p2align	3
_Main_vtable:
	.quad	_Mainmain

	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%g\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%s\n"

L_fmt.3:                                ## @fmt.3
	.asciz	"%d\n"

L_fmt.4:                                ## @fmt.4
	.asciz	"%g\n"

L_fmt.5:                                ## @fmt.5
	.asciz	"%s\n"

L_str:                                  ## @str
	.space	1

L_fmt.6:                                ## @fmt.6
	.asciz	"%d\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%g\n"

L_fmt.8:                                ## @fmt.8
	.asciz	"%s\n"

L_fmt.9:                                ## @fmt.9
	.asciz	"%d\n"

L_fmt.10:                               ## @fmt.10
	.asciz	"%g\n"

L_fmt.11:                               ## @fmt.11
	.asciz	"%s\n"

L_fmt.12:                               ## @fmt.12
	.asciz	"%d\n"

L_fmt.13:                               ## @fmt.13
	.asciz	"%g\n"

L_fmt.14:                               ## @fmt.14
	.asciz	"%s\n"

L_fmt.15:                               ## @fmt.15
	.asciz	"%d\n"

L_fmt.16:                               ## @fmt.16
	.asciz	"%g\n"

L_fmt.17:                               ## @fmt.17
	.asciz	"%s\n"

L_fmt.18:                               ## @fmt.18
	.asciz	"%d\n"

L_fmt.19:                               ## @fmt.19
	.asciz	"%g\n"

L_fmt.20:                               ## @fmt.20
	.asciz	"%s\n"

L_fmt.21:                               ## @fmt.21
	.asciz	"%d\n"

L_fmt.22:                               ## @fmt.22
	.asciz	"%g\n"

L_fmt.23:                               ## @fmt.23
	.asciz	"%s\n"

L_fmt.24:                               ## @fmt.24
	.asciz	"%d\n"

L_fmt.25:                               ## @fmt.25
	.asciz	"%g\n"

L_fmt.26:                               ## @fmt.26
	.asciz	"%s\n"

L_fmt.27:                               ## @fmt.27
	.asciz	"%d\n"

L_fmt.28:                               ## @fmt.28
	.asciz	"%g\n"

L_fmt.29:                               ## @fmt.29
	.asciz	"%s\n"

L_fmt.30:                               ## @fmt.30
	.asciz	"%d\n"

L_fmt.31:                               ## @fmt.31
	.asciz	"%g\n"

L_fmt.32:                               ## @fmt.32
	.asciz	"%s\n"

L_fmt.33:                               ## @fmt.33
	.asciz	"%d\n"

L_fmt.34:                               ## @fmt.34
	.asciz	"%g\n"

L_fmt.35:                               ## @fmt.35
	.asciz	"%s\n"

L_fmt.36:                               ## @fmt.36
	.asciz	"%d\n"

L_fmt.37:                               ## @fmt.37
	.asciz	"%g\n"

L_fmt.38:                               ## @fmt.38
	.asciz	"%s\n"

L_fmt.39:                               ## @fmt.39
	.asciz	"%d\n"

L_fmt.40:                               ## @fmt.40
	.asciz	"%g\n"

L_fmt.41:                               ## @fmt.41
	.asciz	"%s\n"

L_fmt.42:                               ## @fmt.42
	.asciz	"%d\n"

L_fmt.43:                               ## @fmt.43
	.asciz	"%g\n"

L_fmt.44:                               ## @fmt.44
	.asciz	"%s\n"

L_fmt.45:                               ## @fmt.45
	.asciz	"%d\n"

L_fmt.46:                               ## @fmt.46
	.asciz	"%g\n"

L_fmt.47:                               ## @fmt.47
	.asciz	"%s\n"

L_fmt.48:                               ## @fmt.48
	.asciz	"%d\n"

L_fmt.49:                               ## @fmt.49
	.asciz	"%g\n"

L_fmt.50:                               ## @fmt.50
	.asciz	"%s\n"

L_str.51:                               ## @str.51
	.asciz	"Element does not exist"

L_fmt.52:                               ## @fmt.52
	.asciz	"%d\n"

L_fmt.53:                               ## @fmt.53
	.asciz	"%g\n"

L_fmt.54:                               ## @fmt.54
	.asciz	"%s\n"

L_fmt.55:                               ## @fmt.55
	.asciz	"%d\n"

L_fmt.56:                               ## @fmt.56
	.asciz	"%g\n"

L_fmt.57:                               ## @fmt.57
	.asciz	"%s\n"

L_fmt.58:                               ## @fmt.58
	.asciz	"%d\n"

L_fmt.59:                               ## @fmt.59
	.asciz	"%g\n"

L_fmt.60:                               ## @fmt.60
	.asciz	"%s\n"

L_fmt.61:                               ## @fmt.61
	.asciz	"%d\n"

L_fmt.62:                               ## @fmt.62
	.asciz	"%g\n"

L_fmt.63:                               ## @fmt.63
	.asciz	"%s\n"

L_fmt.64:                               ## @fmt.64
	.asciz	"%d\n"

L_fmt.65:                               ## @fmt.65
	.asciz	"%g\n"

L_fmt.66:                               ## @fmt.66
	.asciz	"%s\n"

L_fmt.67:                               ## @fmt.67
	.asciz	"%d\n"

L_fmt.68:                               ## @fmt.68
	.asciz	"%g\n"

L_fmt.69:                               ## @fmt.69
	.asciz	"%s\n"

L_fmt.70:                               ## @fmt.70
	.asciz	"%d\n"

L_fmt.71:                               ## @fmt.71
	.asciz	"%g\n"

L_fmt.72:                               ## @fmt.72
	.asciz	"%s\n"

L_str.73:                               ## @str.73
	.asciz	"Element does not exist"

L_fmt.74:                               ## @fmt.74
	.asciz	"%d\n"

L_fmt.75:                               ## @fmt.75
	.asciz	"%g\n"

L_fmt.76:                               ## @fmt.76
	.asciz	"%s\n"

L_fmt.77:                               ## @fmt.77
	.asciz	"%d\n"

L_fmt.78:                               ## @fmt.78
	.asciz	"%g\n"

L_fmt.79:                               ## @fmt.79
	.asciz	"%s\n"

L_fmt.80:                               ## @fmt.80
	.asciz	"%d\n"

L_fmt.81:                               ## @fmt.81
	.asciz	"%g\n"

L_fmt.82:                               ## @fmt.82
	.asciz	"%s\n"

L_str.83:                               ## @str.83
	.asciz	"Stack is empty, no element to be returned"

L_fmt.84:                               ## @fmt.84
	.asciz	"%d\n"

L_fmt.85:                               ## @fmt.85
	.asciz	"%g\n"

L_fmt.86:                               ## @fmt.86
	.asciz	"%s\n"

L_fmt.87:                               ## @fmt.87
	.asciz	"%d\n"

L_fmt.88:                               ## @fmt.88
	.asciz	"%g\n"

L_fmt.89:                               ## @fmt.89
	.asciz	"%s\n"

L_fmt.90:                               ## @fmt.90
	.asciz	"%d\n"

L_fmt.91:                               ## @fmt.91
	.asciz	"%g\n"

L_fmt.92:                               ## @fmt.92
	.asciz	"%s\n"

L_fmt.93:                               ## @fmt.93
	.asciz	"%d\n"

L_fmt.94:                               ## @fmt.94
	.asciz	"%g\n"

L_fmt.95:                               ## @fmt.95
	.asciz	"%s\n"

L_str.96:                               ## @str.96
	.asciz	"Stack is empty, no element to be returned"

L_str.97:                               ## @str.97
	.space	1

L_fmt.98:                               ## @fmt.98
	.asciz	"%d\n"

L_fmt.99:                               ## @fmt.99
	.asciz	"%g\n"

L_fmt.100:                              ## @fmt.100
	.asciz	"%s\n"

L_fmt.101:                              ## @fmt.101
	.asciz	"%d\n"

L_fmt.102:                              ## @fmt.102
	.asciz	"%g\n"

L_fmt.103:                              ## @fmt.103
	.asciz	"%s\n"

L_fmt.104:                              ## @fmt.104
	.asciz	"%d\n"

L_fmt.105:                              ## @fmt.105
	.asciz	"%g\n"

L_fmt.106:                              ## @fmt.106
	.asciz	"%s\n"

L_fmt.107:                              ## @fmt.107
	.asciz	"%d\n"

L_fmt.108:                              ## @fmt.108
	.asciz	"%g\n"

L_fmt.109:                              ## @fmt.109
	.asciz	"%s\n"

L_str.110:                              ## @str.110
	.asciz	"Queue is empty, no element to be dequeued"

L_fmt.111:                              ## @fmt.111
	.asciz	"%d\n"

L_fmt.112:                              ## @fmt.112
	.asciz	"%g\n"

L_fmt.113:                              ## @fmt.113
	.asciz	"%s\n"

L_fmt.114:                              ## @fmt.114
	.asciz	"%d\n"

L_fmt.115:                              ## @fmt.115
	.asciz	"%g\n"

L_fmt.116:                              ## @fmt.116
	.asciz	"%s\n"

L_fmt.117:                              ## @fmt.117
	.asciz	"%d\n"

L_fmt.118:                              ## @fmt.118
	.asciz	"%g\n"

L_fmt.119:                              ## @fmt.119
	.asciz	"%s\n"

L_str.120:                              ## @str.120
	.asciz	"Queue is empty, no element to be dequeued"

L_str.121:                              ## @str.121
	.space	1

L_fmt.122:                              ## @fmt.122
	.asciz	"%d\n"

L_fmt.123:                              ## @fmt.123
	.asciz	"%g\n"

L_fmt.124:                              ## @fmt.124
	.asciz	"%s\n"

L_fmt.125:                              ## @fmt.125
	.asciz	"%d\n"

L_fmt.126:                              ## @fmt.126
	.asciz	"%g\n"

L_fmt.127:                              ## @fmt.127
	.asciz	"%s\n"

L_fmt.128:                              ## @fmt.128
	.asciz	"%d\n"

L_fmt.129:                              ## @fmt.129
	.asciz	"%g\n"

L_fmt.130:                              ## @fmt.130
	.asciz	"%s\n"

L_fmt.131:                              ## @fmt.131
	.asciz	"%d\n"

L_fmt.132:                              ## @fmt.132
	.asciz	"%g\n"

L_fmt.133:                              ## @fmt.133
	.asciz	"%s\n"

L_str.134:                              ## @str.134
	.asciz	"Moo"

L_fmt.135:                              ## @fmt.135
	.asciz	"%d\n"

L_fmt.136:                              ## @fmt.136
	.asciz	"%g\n"

L_fmt.137:                              ## @fmt.137
	.asciz	"%s\n"

L_fmt.138:                              ## @fmt.138
	.asciz	"%d\n"

L_fmt.139:                              ## @fmt.139
	.asciz	"%g\n"

L_fmt.140:                              ## @fmt.140
	.asciz	"%s\n"

L_fmt.141:                              ## @fmt.141
	.asciz	"%d\n"

L_fmt.142:                              ## @fmt.142
	.asciz	"%g\n"

L_fmt.143:                              ## @fmt.143
	.asciz	"%s\n"

L_str.144:                              ## @str.144
	.asciz	"Bar"

L_fmt.145:                              ## @fmt.145
	.asciz	"%d\n"

L_fmt.146:                              ## @fmt.146
	.asciz	"%g\n"

L_fmt.147:                              ## @fmt.147
	.asciz	"%s\n"

L_fmt.148:                              ## @fmt.148
	.asciz	"%d\n"

L_fmt.149:                              ## @fmt.149
	.asciz	"%g\n"

L_fmt.150:                              ## @fmt.150
	.asciz	"%s\n"

L_fmt.151:                              ## @fmt.151
	.asciz	"%d\n"

L_fmt.152:                              ## @fmt.152
	.asciz	"%g\n"

L_fmt.153:                              ## @fmt.153
	.asciz	"%s\n"

L_fmt.154:                              ## @fmt.154
	.asciz	"%d\n"

L_fmt.155:                              ## @fmt.155
	.asciz	"%g\n"

L_fmt.156:                              ## @fmt.156
	.asciz	"%s\n"

L_str.157:                              ## @str.157
	.asciz	"Foo"

L_fmt.158:                              ## @fmt.158
	.asciz	"%d\n"

L_fmt.159:                              ## @fmt.159
	.asciz	"%g\n"

L_fmt.160:                              ## @fmt.160
	.asciz	"%s\n"

L_str.161:                              ## @str.161
	.asciz	"test"

L_fmt.162:                              ## @fmt.162
	.asciz	"%d\n"

L_fmt.163:                              ## @fmt.163
	.asciz	"%g\n"

L_fmt.164:                              ## @fmt.164
	.asciz	"%s\n"

L_str.165:                              ## @str.165
	.asciz	"!@#$%^&'()"

.subsections_via_symbols
