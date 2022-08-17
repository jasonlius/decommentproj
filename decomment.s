	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_normalStateHandler             ## -- Begin function normalStateHandler
	.p2align	4, 0x90
_normalStateHandler:                    ## @normalStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	subl	$34, %eax
	je	LBB0_2
	jmp	LBB0_7
LBB0_7:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	subl	$39, %eax
	je	LBB0_3
	jmp	LBB0_8
LBB0_8:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	subl	$47, %eax
	je	LBB0_1
	jmp	LBB0_9
LBB0_9:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	subl	$92, %eax
	je	LBB0_4
	jmp	LBB0_5
LBB0_1:
	movl	$1, -8(%rbp)
	jmp	LBB0_6
LBB0_2:
	movl	$5, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	_putchar
	jmp	LBB0_6
LBB0_3:
	movl	$6, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	_putchar
	jmp	LBB0_6
LBB0_4:
	movl	$4, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	_putchar
	jmp	LBB0_6
LBB0_5:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$0, -8(%rbp)
LBB0_6:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_norbackslashHandler            ## -- Begin function norbackslashHandler
	.p2align	4, 0x90
_norbackslashHandler:                   ## @norbackslashHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_slashStateHandler              ## -- Begin function slashStateHandler
	.p2align	4, 0x90
_slashStateHandler:                     ## @slashStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$-34, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 ## 8-byte Spill
	subl	$13, %eax
	ja	LBB2_5
## %bb.7:
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	leaq	LJTI2_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB2_1:
	movl	$2, -8(%rbp)
	movl	$32, %edi
	callq	_putchar
	jmp	LBB2_6
LBB2_2:
	movl	$1, -8(%rbp)
	movl	$47, %edi
	callq	_putchar
	jmp	LBB2_6
LBB2_3:
	movl	$6, -8(%rbp)
	movl	$47, %edi
	callq	_putchar
	movl	-4(%rbp), %edi
	callq	_putchar
	jmp	LBB2_6
LBB2_4:
	movl	$5, -8(%rbp)
	movl	$47, %edi
	callq	_putchar
	movl	-4(%rbp), %edi
	callq	_putchar
	jmp	LBB2_6
LBB2_5:
	movl	$47, %edi
	callq	_putchar
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$0, -8(%rbp)
LBB2_6:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L2_0_set_4, LBB2_4-LJTI2_0
.set L2_0_set_5, LBB2_5-LJTI2_0
.set L2_0_set_3, LBB2_3-LJTI2_0
.set L2_0_set_1, LBB2_1-LJTI2_0
.set L2_0_set_2, LBB2_2-LJTI2_0
LJTI2_0:
	.long	L2_0_set_4
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_3
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_1
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_5
	.long	L2_0_set_2
	.end_data_region
                                        ## -- End function
	.globl	_slashStartStateHandler         ## -- Begin function slashStartStateHandler
	.p2align	4, 0x90
_slashStartStateHandler:                ## @slashStartStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$42, -4(%rbp)
	jne	LBB3_2
## %bb.1:
	movl	$3, -20(%rbp)
	jmp	LBB3_5
LBB3_2:
	cmpl	$10, -4(%rbp)
	jne	LBB3_4
## %bb.3:
	movl	$10, %edi
	callq	_putchar
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB3_4:
	movl	$2, -20(%rbp)
LBB3_5:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_slashStartStartStateHandler    ## -- Begin function slashStartStartStateHandler
	.p2align	4, 0x90
_slashStartStartStateHandler:           ## @slashStartStartStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$47, -4(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	LBB4_5
LBB4_2:
	cmpl	$10, -4(%rbp)
	jne	LBB4_4
## %bb.3:
	movl	$10, %edi
	callq	_putchar
LBB4_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	$2, -20(%rbp)
LBB4_5:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_doubleQuoteStateHandler        ## -- Begin function doubleQuoteStateHandler
	.p2align	4, 0x90
_doubleQuoteStateHandler:               ## @doubleQuoteStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	subl	$34, %eax
	je	LBB5_2
	jmp	LBB5_5
LBB5_5:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	subl	$92, %eax
	jne	LBB5_3
	jmp	LBB5_1
LBB5_1:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$7, -8(%rbp)
	jmp	LBB5_4
LBB5_2:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$0, -8(%rbp)
	jmp	LBB5_4
LBB5_3:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$5, -8(%rbp)
LBB5_4:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_DqBackslashStateHandler        ## -- Begin function DqBackslashStateHandler
	.p2align	4, 0x90
_DqBackslashStateHandler:               ## @DqBackslashStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$5, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_singleQuoteStateHandler        ## -- Begin function singleQuoteStateHandler
	.p2align	4, 0x90
_singleQuoteStateHandler:               ## @singleQuoteStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 ## 4-byte Spill
	subl	$39, %eax
	je	LBB7_2
	jmp	LBB7_5
LBB7_5:
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	subl	$92, %eax
	jne	LBB7_3
	jmp	LBB7_1
LBB7_1:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$8, -8(%rbp)
	jmp	LBB7_4
LBB7_2:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$0, -8(%rbp)
	jmp	LBB7_4
LBB7_3:
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$6, -8(%rbp)
LBB7_4:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_sqBackslashStateHandler        ## -- Begin function sqBackslashStateHandler
	.p2align	4, 0x90
_sqBackslashStateHandler:               ## @sqBackslashStateHandler
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_putchar
	movl	$6, -8(%rbp)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_detectUnterminatedComment      ## -- Begin function detectUnterminatedComment
	.p2align	4, 0x90
_detectUnterminatedComment:             ## @detectUnterminatedComment
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$2, -8(%rbp)
	je	LBB9_2
## %bb.1:
	cmpl	$3, -8(%rbp)
	jne	LBB9_3
LBB9_2:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %edx
	subl	-12(%rbp), %edx
	leaq	L_.str(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	$0, -4(%rbp)
	jmp	LBB9_4
LBB9_3:
	movl	$1, -4(%rbp)
LBB9_4:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
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
	movl	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -20(%rbp)
LBB10_1:                                ## =>This Inner Loop Header: Depth=1
	callq	_getchar
	movl	%eax, -12(%rbp)
	cmpl	$-1, %eax
	je	LBB10_15
## %bb.2:                               ##   in Loop: Header=BB10_1 Depth=1
	cmpl	$10, -12(%rbp)
	jne	LBB10_4
## %bb.3:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB10_4:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-8(%rbp), %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	subq	$8, %rax
	ja	LBB10_14
## %bb.16:                              ##   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	leaq	LJTI10_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB10_5:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_normalStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_6:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_slashStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_7:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	leaq	-16(%rbp), %rsi
	callq	_slashStartStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_8:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	leaq	-16(%rbp), %rsi
	callq	_slashStartStartStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_9:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_doubleQuoteStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_10:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_DqBackslashStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_11:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_singleQuoteStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_12:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_sqBackslashStateHandler
	movl	%eax, -8(%rbp)
	jmp	LBB10_14
LBB10_13:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	callq	_norbackslashHandler
	movl	%eax, -8(%rbp)
LBB10_14:                               ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_1
LBB10_15:
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	_detectUnterminatedComment
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L10_0_set_5, LBB10_5-LJTI10_0
.set L10_0_set_6, LBB10_6-LJTI10_0
.set L10_0_set_7, LBB10_7-LJTI10_0
.set L10_0_set_8, LBB10_8-LJTI10_0
.set L10_0_set_13, LBB10_13-LJTI10_0
.set L10_0_set_9, LBB10_9-LJTI10_0
.set L10_0_set_11, LBB10_11-LJTI10_0
.set L10_0_set_10, LBB10_10-LJTI10_0
.set L10_0_set_12, LBB10_12-LJTI10_0
LJTI10_0:
	.long	L10_0_set_5
	.long	L10_0_set_6
	.long	L10_0_set_7
	.long	L10_0_set_8
	.long	L10_0_set_13
	.long	L10_0_set_9
	.long	L10_0_set_11
	.long	L10_0_set_10
	.long	L10_0_set_12
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Error: line %d: unterminated comment\n"

.subsections_via_symbols
