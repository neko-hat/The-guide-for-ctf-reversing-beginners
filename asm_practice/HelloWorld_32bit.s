section .data
	welcome db "Hello, World!"

section .text
	global _start

_start:
	mov eax, 0x4; write
	mov ebx, 1; stdout
	mov ecx, welcome; buf
	mov edx, 0xd; message length	
	int 0x80; call write

	mov eax, 0x1; exit
	mov ebx, 0x0; error code
	int 0x80; call exit