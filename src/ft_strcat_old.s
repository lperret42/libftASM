global _ft_strcat

section .text

_ft_strcat:
	mov rbx, rdi
	mov rcx, rsi

tozero_loop:
	cmp byte[rbx], 0x0
	jz strcat_copy
	inc rbx
	jmp tozero_loop

strcat_copy:
	cmp byte[rcx], 0x0
	jz end
	mov r8, [rcx]
	mov [rbx], r8
	inc rbx
	inc rcx
	jmp strcat_copy

end:
	mov r8, 0x0
	mov [rbx], r8
	mov rax, rdi
	ret
