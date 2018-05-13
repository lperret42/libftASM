section .text
global _ft_tolower

_ft_tolower:
	mov rax, rdi
	cmp rdi, 65
	jl end
	cmp rdi, 91
	jl tolower
	jmp end

tolower:
	add rax, 32
	jmp end

end:
	ret
