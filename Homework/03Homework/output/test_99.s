	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, %r11
	movq	%rsi, %r12
	addq	%r11, %r12
	movq	%r12, -8(%rbp)
	movq	-8(%rbp), %r11
	movq	%rdx, %r12
	addq	%r11, %r12
	movq	%r12, -16(%rbp)
	movq	-16(%rbp), %r11
	movq	%rcx, %r12
	addq	%r11, %r12
	movq	%r12, -24(%rbp)
	movq	-24(%rbp), %r11
	movq	%r8 , %r12
	addq	%r11, %r12
	movq	%r12, -32(%rbp)
	movq	-32(%rbp), %r11
	movq	%r9 , %r12
	addq	%r11, %r12
	movq	%r12, -40(%rbp)
	movq	-40(%rbp), %r11
	movq	16(%rbp), %r12
	addq	%r11, %r12
	movq	%r12, -48(%rbp)
	movq	-48(%rbp), %r11
	movq	24(%rbp), %r12
	addq	%r11, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rdi, %r11
	movq	%r11, %rdi
	movq	%rdi, %r11
	movq	%r11, %rsi
	movq	%rdi, %r11
	movq	%r11, %rdx
	movq	%rdi, %r11
	movq	%r11, %rcx
	movq	%rdi, %r11
	movq	%r11, %r8 
	movq	%rdi, %r11
	movq	%r11, %r9 
	movq	%rdi, %r11
	pushq	%r11
	movq	%rdi, %r11
	pushq	%r11
	callq	bar
	movq	%rax, -8(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-8(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	$3, %r11
	movq	%r11, %rdi
	callq	foo
	movq	%rax, -8(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-8(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	