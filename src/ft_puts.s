# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:11:49 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:56:54 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
null:
	.string	db "(null)", 10
	.len	equ $ - null.string

newline		db 10

section .text
global _ft_puts
extern _ft_strlen

_ft_puts:
	push	rdi
	push	rsi
	push	rbx

check:
	mov		r12, rdi
	cmp		rdi, 0
	je		is_null
	jne		is_not_null

write:
	mov		rdi, STDOUT
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		end
	cmp		r12, 0
	je		ten
	mov		rdx, 1
	lea		rsi, [rel newline]
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		end
	jmp		ten

is_null:
	lea		rsi, [rel null.string]
	mov		rdx, null.len
	jmp		write

is_not_null:
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, rdi
	jmp		write

ten:
	mov		rax, 10

end:
	pop		rbx
	pop		rsi
	pop		rdi
	ret
