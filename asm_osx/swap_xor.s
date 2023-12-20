	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 15
	.globl	_my_swap                ## -- Begin function my_swap
	.p2align	4, 0x90
_my_swap:                               ## @my_swap
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	xorl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	xorl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	xorl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
