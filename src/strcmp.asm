BITS 64

SECTION .text

GLOBAL strcmp

strcmp:
	mov	eax, edx
	cmp	rdi, 0
	je	.return
	cmp	rsi, 0
	je	.return
.loop:
	lodsb
	xchg	rsi, rdi
	mov	dl, al
	lodsb
	xchg	rsi, rdi
	cmp	al, 0
	je	.return
	cmp	dl, 0
	je	.return
	cmp	al, dl
	je	.loop
.return:
	sub	al, dl
	movsx	eax, al
	ret
