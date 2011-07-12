	.file	"no-virtuals.cc"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"total distance = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$16, %edi
	call	_Znwm
	movabsq	$4616189618054758400, %rcx
	movq	%rcx, (%rax)
	movl	$0, 8(%rax)
	movl	$1075052544, 12(%rax)
	movl	$100000000, %edx
	movq	%rcx, 8(%rsp)
	movsd	8(%rsp), %xmm1
	xorpd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm4
	movsd	.LC2(%rip), %xmm3
.L2:
	movsd	(%rax), %xmm2
	movapd	%xmm1, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	movapd	%xmm2, %xmm5
	mulsd	%xmm2, %xmm5
	addsd	%xmm4, %xmm5
	addsd	%xmm6, %xmm5
	addsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm1
	addsd	%xmm3, %xmm2
	movsd	%xmm2, (%rax)
	subl	$1, %edx
	jne	.L2
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
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
