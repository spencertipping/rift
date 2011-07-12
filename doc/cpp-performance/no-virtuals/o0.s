	.file	"no-virtuals.cc"
	.section	.text._ZN5pointC2Edd,"axG",@progbits,_ZN5pointC5Edd,comdat
	.align 2
	.weak	_ZN5pointC2Edd
	.type	_ZN5pointC2Edd, @function
_ZN5pointC2Edd:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN5pointC2Edd, .-_ZN5pointC2Edd
	.section	.text._ZNK5point16distance_squaredEv,"axG",@progbits,_ZNK5point16distance_squaredEv,comdat
	.align 2
	.weak	_ZNK5point16distance_squaredEv
	.type	_ZNK5point16distance_squaredEv, @function
_ZNK5point16distance_squaredEv:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZNK5point16distance_squaredEv, .-_ZNK5point16distance_squaredEv
	.section	.text._ZN5point6modifyEv,"axG",@progbits,_ZN5point6modifyEv,comdat
	.align 2
	.weak	_ZN5point6modifyEv
	.type	_ZN5point6modifyEv, @function
_ZN5point6modifyEv:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN5point6modifyEv, .-_ZN5point6modifyEv
	.section	.rodata
.LC3:
	.string	"total distance = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm0
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	_ZN5pointC1Edd
	movl	$16, %edi
	call	_Znwm
	movq	%rax, %rbx
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm0
	movq	%rbx, %rdi
	call	_ZN5pointC1Edd
	movq	%rbx, -40(%rbp)
	movl	$0, %eax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L5
.L6:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5point16distance_squaredEv
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5point16distance_squaredEv
	addsd	-72(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5point6modifyEv
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5point6modifyEv
	addl	$1, -28(%rbp)
.L5:
	cmpl	$99999999, -28(%rbp)
	setle	%al
	testb	%al, %al
	jne	.L6
	movsd	-24(%rbp), %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.weak	_ZN5pointC1Edd
	.set	_ZN5pointC1Edd,_ZN5pointC2Edd
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1075052544
	.align 8
.LC1:
	.long	0
	.long	1074790400
	.ident	"GCC: (GNU) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
