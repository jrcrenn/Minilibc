BITS 64

SECTION .text

GLOBAL write

write:
	movsxd	rdi, edi
	mov	rax, 1
	syscall
	ret
