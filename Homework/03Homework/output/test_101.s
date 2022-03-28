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
	leaq	_v2(%rip), %rbx
	movq	$0, %r11
	addq	%r11, %rbx
	addq	$0, %rbx
	movq	%rbx, -40(%rbp)
	movq	$5, %r11
	movq	-40(%rbp), %rbx
	movq	%r11, (%rbx)
	leaq	_v2(%rip), %r11
	movq	%r11, -48(%rbp)
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	-48(%rbp), %r11
	movq	%r11, %rdi
	callq	foo
	movq	%rax, -8(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-40(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -24(%rbp)
	movq	-24(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, %rbx
	movq	$0, %r11
	addq	%r11, %rbx
	addq	$0, %rbx
	movq	%rbx, -24(%rbp)
	movq	$6, %r11
	movq	-24(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	-24(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -16(%rbp)
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	