global _ft_strcat

section .text

_ft_strcat:
	mov rax, rdi

s1:
	xor r9, r9
s1_loop:
	cmp byte[rdi + r9], 0
	je cat
	inc r9
	jmp s1_loop

cat:
	xor r10, r10
s2_loop:
	cmp byte[rsi + r10], 0
	je end
	mov cl, [rsi + r10]
	mov [rdi + r9], cl
	inc r9
	inc r10
	jmp s2_loop

end:
	mov byte[rdi + r9], 0
	ret
