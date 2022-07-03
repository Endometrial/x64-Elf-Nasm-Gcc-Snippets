;
; Name: float_math.asm
;
; Auth: Luna M, Hazel
; Date: July 2, 2022
; Desc: Does some simple arithmatic
; with floating point numbers and
; prints the result
;

extern printf


section .data
	fmt_f1:		db	"Here is a positive float : %f", 0xa, 0x0
	fmt_f2:		db	"Here is a negative float : %f", 0xa, 0x0
	fmt_add:	db	"Here is them added       : %f", 0xa, 0x0
	fmt_sub:	db	"Here is them subtracted  : %f", 0xa, 0x0
	fmt_mul:	db	"Here is them multiplied  : %f", 0xa, 0x0
	fmt_div:	db	"Here is them divided     : %f", 0xa, 0x0
	float1:		dq	420.32
	float2:		dq	-69.26

section .text
global main
main:
	push  rbp


	movq	xmm0,	qword [float1]
	mov	rdi,	fmt_f1
	mov	rax,	0x1
	call printf


	movq	xmm0,	qword [float2]
	mov	rdi,	fmt_f2
	mov	rax,	0x1
	call printf
	

	movq	xmm0,	qword [float1]
	movq	xmm1,	qword [float2]
	addsd	xmm0,	xmm1
	mov	rdi,	fmt_add
	mov	rax,	0x1
	call printf
	
	
	movq	xmm0,	qword [float1]
	movq	xmm1,	qword [float2]
	subsd	xmm0,	xmm1
	mov	rdi,	fmt_sub
	mov	rax,	0x1
	call printf

	movq	xmm0,	qword [float1]
	movq	xmm1,	qword [float2]
	mulsd	xmm0,	xmm1
	mov	rdi,	fmt_mul
	mov	rax,	0x1
	call printf

	movq	xmm0,	qword [float1]
	movq	xmm1,	qword [float2]
	divsd	xmm0,	xmm1
	mov	rdi,	fmt_div
	mov	rax,	0x1
	call printf

	pop rbp
	xor rax,  rax
	ret



