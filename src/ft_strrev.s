# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strrev.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 17:24:39 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 17:54:35 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strrev
extern _ft_strlen

_ft_strrev:
	push	rdi
	call	_ft_strlen
	;mov		r13, rax
	;dec		r13
	;mov		eax, 4
	mov		rax, 30
	mov		rcx, 15
	div		rcx
	ret
	mov		r12, 0

loop:
	jmp end
	cmp		r12, rax
	jge		end
	mov		r14b, byte[rdi + r12]
	;mov		r15l, byte[rdi + r13 - rax]
	;mov		byte[rdi + r13 - rax], r14l
	mov		byte[rdi + r12], r15b
	inc		r12
	jmp		loop

end:
	pop		rdi
	mov		rax, rdi
	ret
