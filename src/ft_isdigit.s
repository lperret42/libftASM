global _ft_isdigit

section .text

_ft_isdigit:
	cmp rdi, 47
	jle no
	cmp rdi, 57
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
