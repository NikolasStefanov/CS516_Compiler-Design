	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, %r11
	movq	$0, %r12
	movq	$0, -32(%rbp)
	cmpq	%r11, %r12
	sete	-32(%rbp)
	movq	-32(%rbp), %r11
	cmpq	$0, %r11
	je	ret1
	jmp	recurse
	.text
ret1:
	movq	$1, %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
recurse:
	movq	%rdi, %r11
	movq	$1, %r12
	subq	%r12, %r11
	movq	%r11, -8(%rbp)
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	-8(%rbp), %r11
	movq	%r11, %rdi
	callq	factorial
	movq	%rax, -16(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	%rdi, %r11
	movq	-16(%rbp), %r12
	imulq	%r11, %r12
	movq	%r12, -24(%rbp)
	movq	-24(%rbp), %r12
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
	movq	$5, %r11
	movq	%r11, %rdi
	callq	factorial
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