	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	16(%rbp), %r9 
	movq	24(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -24(%rbp)
	movq	-24(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	_foo(%rip), %r9 
	pushq	%r9 
	callq	ll_callback
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %r9 
	pushq	%r9 
	callq	ll_ltoa
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %r9 
	pushq	%r9 
	callq	ll_puts
	movq	%rax, -24(%rbp)
	movq	$0, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	