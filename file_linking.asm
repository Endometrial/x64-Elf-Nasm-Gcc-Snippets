;
; Name: file_linking.asm
;
; Auth: Radiotrophia
; Date: July 2, 2022
; Desc: Calls the hello_world function
; from "hello_world_function.asm"
;

%include "hello_world_function.asm"

section .text
global main
main:
	push	rbp

	call hello_world

	pop	rbp
	mov	rax,	0x0
	ret
