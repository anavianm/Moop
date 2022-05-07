	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_Mainmain                       ## -- Begin function Mainmain
	.p2align	4, 0x90
_Mainmain:                              ## @Mainmain
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$45, %edi
	callq	*_Foo_vtable(%rip)
	movq	%rax, (%rsp)
	movl	(%rax), %esi
	leaq	L_fmt.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rcx
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
	.globl	_Foo                            ## -- Begin function Foo
	.p2align	4, 0x90
_Foo:                                   ## @Foo
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$4, %edi
	callq	_malloc
	movq	%rax, %rbx
	movl	$0, (%rax)
	movl	$8, %edi
	callq	_malloc
	leaq	_Foo(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rcx, _Foo_vtable(%rip)
	movl	%ebp, 4(%rsp)
	movl	%ebp, (%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_main_ptr                       ## @main_ptr
	.p2align	3
_main_ptr:
	.quad	_main

	.globl	_Foo_vtable                     ## @Foo_vtable
.zerofill __DATA,__common,_Foo_vtable,8,3
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

.subsections_via_symbols
