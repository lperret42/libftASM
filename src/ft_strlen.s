section .text
global _ft_strlen

_ft_strlen:
	push rdi
	mov al, 0
	mov rcx, -1
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret
