	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	16(%rbp), %r9 
	movq	24(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -8(%rbp)
	movq	-8(%rbp), %r9 
	movq	32(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r9 
	movq	40(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -24(%rbp)
	movq	-24(%rbp), %r9 
	movq	48(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -32(%rbp)
	movq	-32(%rbp), %r9 
	movq	56(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r9 
	movq	64(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -48(%rbp)
	movq	-48(%rbp), %r9 
	movq	72(%rbp), %r10
	addq	%r9 , %r10
	movq	%r10, -56(%rbp)
	movq	-56(%rbp), %r10
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
	movq	16(%rbp), %r9 
	pushq	%r9 
	movq	16(%rbp), %r9 
	pushq	%r9 
	movq	16(%rbp), %r9 
	pushq	%r9 
	movq	16(%rbp), %r9 
	pushq	%r9 
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
	movq	$3, %r9 
	pushq	%r9 
	callq	foo
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	