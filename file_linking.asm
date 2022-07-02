%include "hello_world_function.asm"

section .text
global main
main:
	push	rbp

	call hello_world

	pop	rbp
	mov	rax,	0x0
	ret
