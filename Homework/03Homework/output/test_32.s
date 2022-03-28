	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	16(%rbp), %r9 
	movq	$0, %r10
	movq	$0, -32(%rbp)
	cmpq	%r9 , %r10
	sete	-32(%rbp)
	movq	-32(%rbp), %r9 
	cmpq	$0, %r9 
	je	ret1
	jmp	recurse
	.text
ret1:
	movq	$1, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	
	.text
recurse:
	movq	16(%rbp), %r9 
	movq	$1, %r10
	subq	%r10, %r9 
	movq	%r9 , -8(%rbp)
	movq	-8(%rbp), %r9 
	pushq	%r9 
	callq	factorial
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %r9 
	movq	-16(%rbp), %r10
	imulq	%r9 , %r10
	movq	%r10, -24(%rbp)
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
	subq	$16, %rsp
	movq	$5, %r9 
	pushq	%r9 
	callq	factorial
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	