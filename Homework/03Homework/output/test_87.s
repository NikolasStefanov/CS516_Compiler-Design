	.data
	.globl	_gint
_gint:
	.quad	42
	.data
	.globl	_v1
_v1:
	.quad	0
	.quad	_gint
	.data
	.globl	_v2
_v2:
	.quad	1
	.quad	0
	.data
	.globl	_gstr
_gstr:
	.asciz	"hello, world!"
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	leaq	_v2(%rip), %r9 
	addq	$8, %r9 
	movq	%r9 , -40(%rbp)
	movq	$5, %r9 
	movq	-40(%rbp), %rbx
	movq	%r9 , (%rbx)
	leaq	_v2(%rip), %r9 
	movq	%r9 , -48(%rbp)
	movq	-48(%rbp), %r9 
	pushq	%r9 
	callq	foo
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -24(%rbp)
	movq	-24(%rbp), %r10
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
	subq	$32, %rsp
	movq	16(%rbp), %r9 
	addq	$8, %r9 
	movq	%r9 , -24(%rbp)
	movq	$6, %r9 
	movq	-24(%rbp), %rbx
	movq	%r9 , (%rbx)
	movq	-24(%rbp), %rbx
	movq	(%rbx), %r9 
	movq	%r9 , -16(%rbp)
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	