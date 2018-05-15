# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 13:59:31 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:37:44 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4
%define BUFSIZE				256

section .bss
buf:
	resb	BUFSIZE

section .text
global _ft_cat
extern _ft_bzero

_ft_cat:
	push	rdi
	push	rsi
	push	rdx
	mov		r12, rdi

loop:
	mov		rdi, r12
	lea		rsi, [rel buf]
	mov		rdx, BUFSIZE
	mov		rax, MACH_SYSCALL(READ)
	syscall
	jc		end
	cmp		rax, 0
	jle		end
	mov		rdi, STDOUT
	lea		rsi, [rel buf]
	mov		rdx, rax
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	jc		end
	jmp		loop

end:
	pop	rdx
	pop	rsi
	pop	rdi
	ret
