	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	16(%rbp), %r9 
	movq	24(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -8(%rbp)
	movq	-8(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	
	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	16(%rbp), %r9 
	pushq	%r9 
	movq	16(%rbp), %r9 
	pushq	%r9 
	callq	bar
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %r10
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
	subq	$16, %rsp
	movq	$17, %r9 
	pushq	%r9 
	callq	foo
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	