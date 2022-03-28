	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$42, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	
	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$0, %r10
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
	subq	$96, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	$0, %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	$100, %r9 
	movq	-88(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	-88(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -16(%rbp)
	movq	-16(%rbp), %r9 
	movq	$0, %r10
	movq	$0, -24(%rbp)
	cmpq	%r9 , %r10
	setne	-24(%rbp)
	movq	-24(%rbp), %r9 
	cmpq	$0, %r9 
	je	then
	jmp	else
	.text
then:
	callq	foo
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	jmp	end
	.text
else:
	callq	bar
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %r9 
	movq	-8(%rbp), %rbx
	movq	%r9 , (%rbx)
	jmp	end
	.text
end:
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -48(%rbp)
	movq	-48(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	