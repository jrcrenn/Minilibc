BITS 64

SECTION .text

GLOBAL strlen

strlen:
	xor	rax, rax
	cmp	rdi, 0
	je	.return
	mov	rsi, rdi
.loop:
	lodsb
	cmp	al, 0
	jne	.loop
	mov	rax, rsi
	sub	rax, rdi
	dec	rax
.return:
	ret
