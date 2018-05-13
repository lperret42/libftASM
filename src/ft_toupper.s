section .text
global _ft_toupper

_ft_toupper:
	mov rax, rdi
	cmp rdi, 97
	jl end
	cmp rdi, 123
	jl toupper
	jmp end

toupper:
	sub rax, 32
	jmp end

end:
	ret
