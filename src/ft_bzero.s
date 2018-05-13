global _ft_bzero

section .text

_ft_bzero:
	cmp rsi, 0
	jle end
	dec rsi
	mov byte[rdi + rsi], 0
	jmp _ft_bzero

end:
	ret
