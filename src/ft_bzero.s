section .text
global _ft_bzero

_ft_bzero:
	push rsi
	push rdi
loop:
	cmp rsi, 0
	jle end
	dec rsi
	mov byte[rdi + rsi], 0
	jmp loop

end:
	pop rdi
	pop rsi
	ret
