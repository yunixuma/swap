	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 15
	.globl	_swap_tmp               ## -- Begin function swap_tmp
	.p2align	4, 0x90
_swap_tmp:                              ## @swap_tmp
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
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_swap_tmps              ## -- Begin function swap_tmps
	.p2align	4, 0x90
_swap_tmps:                             ## @swap_tmps
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
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_swap_xor               ## -- Begin function swap_xor
	.p2align	4, 0x90
_swap_xor:                              ## @swap_xor
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
	.globl	_swap_dif               ## -- Begin function swap_dif
	.p2align	4, 0x90
_swap_dif:                              ## @swap_dif
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
	subl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	addl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	subl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_swap_sum               ## -- Begin function swap_sum
	.p2align	4, 0x90
_swap_sum:                              ## @swap_sum
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
	addl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_my_sqrt                ## -- Begin function my_sqrt
	.p2align	4, 0x90
_my_sqrt:                               ## @my_sqrt
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	$16, -20(%rbp)
	movl	-20(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %edi
	shll	%cl, %edi
	movl	%edi, -12(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	je	LBB5_8
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	LBB5_4
## %bb.3:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB5_9
LBB5_4:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB5_6
## %bb.5:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_7
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	-12(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
LBB5_7:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB5_1
LBB5_8:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB5_9:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$3, -20(%rbp)
	movl	$-4, -24(%rbp)
	cmpl	$3, -8(%rbp)
	jne	LBB6_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_atoi
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	_atoi
	movl	%eax, -24(%rbp)
LBB6_2:
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	_swap_tmp(%rip), %rdx
	callq	_test
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	_swap_tmps(%rip), %rdx
	callq	_test
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	_swap_xor(%rip), %rdx
	callq	_test
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	leaq	_swap_dif(%rip), %rdx
	callq	_test
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function test
_test:                                  ## @test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -60(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	$1000000000, %edi       ## imm = 0x3B9ACA00
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	callq	_my_sqrt
	movl	-68(%rbp), %edi         ## 4-byte Reload
	cmpl	%eax, %edi
	jge	LBB7_4
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB7_1
LBB7_4:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_time
	movq	%rax, -48(%rbp)
	callq	_clock
	movq	%rax, -32(%rbp)
	movl	$0, -64(%rbp)
LBB7_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$1000000000, -64(%rbp)  ## imm = 0x3B9ACA00
	jge	LBB7_8
## %bb.6:                               ##   in Loop: Header=BB7_5 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
## %bb.7:                               ##   in Loop: Header=BB7_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB7_5
LBB7_8:
	callq	_clock
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -40(%rbp)
	callq	_time
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	subq	-48(%rbp), %rdx
	leaq	L_.str.1(%rip), %rdi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"[%p]\t%ld clocks\n"

L_.str.1:                               ## @.str.1
	.asciz	"[%p]\t%ld seconds\n"


.subsections_via_symbols
