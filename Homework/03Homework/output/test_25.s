	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	16(%rbp), %r10
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
	subq	$24, %rsp
	movq	$17, %r9 
	pushq	%r9 
	callq	foo
	movq	%rax, -8(%rbp)
	movq	$19, %r9 
	pushq	%r9 
	callq	foo
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	