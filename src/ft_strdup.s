section .text
global _ft_strdup

extern _ft_strlen
extern _malloc
extern _ft_memcpy

_ft_strdup:
	push	rcx

	mov		r12, rdi
	call	_ft_strlen
	add		rax, 1
	mov		r13, rax
	mov		rdi, rax
	call	_malloc
	cmp		rax, 0
	je		end
	mov		rdi, rax
	mov		rsi, r12
	mov		rdx, r13

	call	_ft_memcpy
	jmp		end

end:
	pop		rcx
	ret
