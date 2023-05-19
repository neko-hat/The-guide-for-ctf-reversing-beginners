section .data
	welcome db "Hello, Wolrd!"

section .text
	global _start

_start:
	mov rax, 1; sys_write
	mov rdi, 1; stdout
	mov rsi, welcome; buf
	mov rdx, 0xd; message length
	syscall; calling sys_write
	
	mov rax, 0x3c; sys_exit
	mov rdi, 0x0; error_code
	syscall; calling sys_exit with error_code