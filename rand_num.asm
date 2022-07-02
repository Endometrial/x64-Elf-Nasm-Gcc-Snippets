;
; Name: rand_num.asm
;
; Auth: Luna M, Hazel
; Date: July 2, 2022
; Desc: Generates a random number from
; 1 to 10 using the time() as a seed.
;

extern rand, srand, printf, time

section .data
fmt:	db	"Random number from 1-10 : %d", 0xa, 0x0
num:	equ	10

section .text
global main
main:
	push	rbp

	mov	rdi,	0x0	; NULL
	call time

	mov	rdi,	rax	; output of time(NULL)
	call srand

	call rand
	
	
	mov	rdi,	num	; Sed rdi to num
	mov	rdx,	0	; Clear rdx
	div	rdi		; Divide eax by rdi  aka  rand() / num
        mov	rax,	rdx	; Set rax to the remainder (remainer is put into rdx)

        inc     rax             ; Incriment rax to make the output 1-10 as opposed to 0-9

	mov	rsi,	rax
	mov	rdi,	fmt
	mov	rax,	0x1
	call printf

	pop	rbp
	mov	rax,	0x0
	ret
