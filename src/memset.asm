BITS 64

SECTION .text

GLOBAL memset

memset:
	mov	rcx, rdx
	mov	al, sil
	push	rdi
	cmp	rdi, 0
	je	.return
	rep stosb
.return:
	pop	rax
	ret
