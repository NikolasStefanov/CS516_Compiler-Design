	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, %r12
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
	subq	$24, %rsp
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	$17, %r11
	movq	%r11, %rdi
	callq	foo
	movq	%rax, -8(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	$19, %r11
	movq	%r11, %rdi
	callq	foo
	movq	%rax, -16(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-16(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	