BITS 64

SECTION .text

GLOBAL read

read:
	movsxd	rdi, edi
	mov	rax, 0
	syscall
	ret
