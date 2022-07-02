;
; Name: hello_world.asm
;
; Auth: Luna M, Hazel
; Date: July 2, 2022
; Desc: Prints "Hello, Elf64 Nasm Gcc
; Assembly!" and exits.
;

extern printf ; The C funtion to be called

section .data ; data section .data
	msg:	db "Hello, Elf64 Nasm Gcc Assembly!", 0x0 ; C strings need an 0x0 at the end
	fmt:	db "%s", 0xa, 0x0 ; The printf format "\n", '0'

section .text ; code section .text
global main ; gcc entry point
main: ; program label for the entry point
	push  rbp ; set the stack frame (where we were in the stack so nothing is lost)
	
	mov rsi,  msg
	mov rdi,  fmt
	mov rax,  0
	call printf ; Call C function

	pop rbp ; restore stack

	mov rax,  0 ; normal no error return value
	ret ; return



