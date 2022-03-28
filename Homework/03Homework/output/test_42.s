	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsp, -8(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsp, -112(%rbp)
	movq	16(%rbp), %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	$1, %r9 
	movq	-112(%rbp), %rbx
	movq	%r9 , (%rbx)
	jmp	start
	.text
start:
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -16(%rbp)
	movq	-16(%rbp), %r9 
	movq	$0, %r10
	movq	$0, -24(%rbp)
	cmpq	%r9 , %r10
	setg	-24(%rbp)
	movq	-24(%rbp), %r9 
	cmpq	$0, %r9 
	je	then
	jmp	end
	.text
then:
	movq	-112(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -32(%rbp)
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -40(%rbp)
	movq	-32(%rbp), %r9 
	movq	-40(%rbp), %r10
	imulq	%r9 , %r10
	movq	%r10, -48(%rbp)
	movq	-48(%rbp), %r9 
	movq	-112(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -56(%rbp)
	movq	-56(%rbp), %r9 
	movq	$1, %r10
	subq	%r10, %r9 
	movq	%r9 , -64(%rbp)
	movq	-64(%rbp), %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	jmp	start
	.text
end:
	movq	-112(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -72(%rbp)
	movq	-72(%rbp), %r10
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
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsp, -8(%rbp)
	movq	$0, %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	$5, %r9 
	pushq	%r9 
	callq	factorial
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	