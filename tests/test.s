	.text
	.file	"MicroOOP"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	Mainmain
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	Mainmain                # -- Begin function Mainmain
	.p2align	4, 0x90
	.type	Mainmain,@function
Mainmain:                               # @Mainmain
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)
	cmpl	$3, (%rsp)
	jg	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                # %while_body
                                        # =>This Inner Loop Header: Depth=1
	incl	4(%rsp)
	incl	(%rsp)
	cmpl	$3, (%rsp)
	jle	.LBB1_2
.LBB1_3:                                # %merge
	movl	4(%rsp), %esi
	movl	$.Lfmt, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	Mainmain, .Lfunc_end1-Mainmain
	.cfi_endproc
                                        # -- End function
	.type	main_ptr,@object        # @main_ptr
	.data
	.globl	main_ptr
	.p2align	3
main_ptr:
	.quad	main
	.size	main_ptr, 8

	.type	.Lfmt,@object           # @fmt
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lfmt:
	.asciz	"%d\n"
	.size	.Lfmt, 4

	.type	.Lfmt.1,@object         # @fmt.1
.Lfmt.1:
	.asciz	"%g\n"
	.size	.Lfmt.1, 4

	.type	.Lfmt.2,@object         # @fmt.2
.Lfmt.2:
	.asciz	"%s\n"
	.size	.Lfmt.2, 4

	.section	".note.GNU-stack","",@progbits
