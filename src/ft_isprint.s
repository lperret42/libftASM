global _ft_isprint

section .text

_ft_isprint:
	cmp rdi, 32
	jl no
	cmp rdi, 126
	jle yes
	jmp no

yes:
	mov rax, 1
	jmp end

no:
	mov rax, 0
	jmp end

end:
	ret
