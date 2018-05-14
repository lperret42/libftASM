section .text
global _ft_memset

_ft_memset:
	push	rax
	cld
	mov		al, sil
	mov		rcx, rdx
	rep		stosb
	pop		rax
	ret
