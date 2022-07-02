;
; nasm -f elf64 *.asm
; gcc -m64 *.obj -o a.out
;

extern printf


section .data
	fmt_f1:		db	"Here is a float : %f", 0xa, 0x0 ; The printf format "\n", '0'
	fmt_f2:		db	"Here is a negative float : %f", 0xa, 0x0
	fmt_add:	db	"Here is them added : %f", 0xa, 0x0
	fmt_sub:	db	"Here is them subtracted : %f", 0xa, 0x0
	float1:		dq	420.32
	float2:		dq	-69.26

section .text
global main
main:
	push  rbp


	movq	xmm0,	QWORD [float1]
	mov	rdi,	fmt_f1
	mov	rax,	1
	call printf


	movq	xmm0,	QWORD[float2]
	mov	rdi,	fmt_f2
	mov	rax,	1
	call printf
	

	movq	xmm0,	QWORD[float1]
	movq	xmm1,	QWORD[float2]
	addsd	xmm0,	xmm1
	mov	rdi,	fmt_add
	mov	rax,	1
	call printf
	
	
	movq	xmm0,	QWORD[float1]
	movq	xmm1,	QWORD[float2]
	subsd	xmm0,	xmm1
	mov	rdi,	fmt_sub
	mov	rax,	1
	call printf


	pop rbp
	xor rax,  rax
	ret



