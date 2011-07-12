	.file	"no-virtuals.cc"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"total distance = %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$16, %edi
	call	_Znwm
	movsd	.LC0(%rip), %xmm2
	movabsq	$4617315517961601024, %rdx
	xorpd	%xmm0, %xmm0
	movq	%rdx, 8(%rax)
	movapd	%xmm2, %xmm3
	movl	$100000000, %edx
	movsd	.LC3(%rip), %xmm6
	movsd	.LC2(%rip), %xmm5
	.p2align 4,,10
	.p2align 3
.L2:
	movapd	%xmm3, %xmm1
	subl	$1, %edx
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm1
	addsd	%xmm5, %xmm3
	mulsd	%xmm2, %xmm4
	addsd	%xmm5, %xmm2
	addsd	%xmm6, %xmm1
	addsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm1
	addsd	%xmm1, %xmm0
	jne	.L2
	movsd	%xmm2, (%rax)
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074790400
	.align 8
.LC2:
	.long	0
	.long	1075052544
	.align 8
.LC3:
	.long	0
	.long	1077477376
	.ident	"GCC: (GNU) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
