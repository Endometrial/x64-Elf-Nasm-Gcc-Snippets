;
; Name: hello_world_function.asm
;
; Auth: Luna M, Hazel
; Date: July 2, 2022
; Desc: Prints "Hello world!" when
; hello_world is called from another
; program
;

extern printf

section .data
msg:	db	"Hello world!", 0x0
fmt:	db	"%s", 0xa, 0x0

section .text
global hello_world
hello_world:
	push	rbp

	mov	rsi,	msg
	mov	rdi,	fmt
	mov	rax,	0x1
	call printf

	pop	rbp
	mov	rax,	0x0
	ret
