# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:07:34 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 16:16:54 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strcmp

_ft_strcmp:
	push	rdi
	push	rsi
	mov		r12, 0
	mov		r13, 0
	mov		r14, 0

loop:
	mov		r13b, byte[rdi + r12]
	mov		r14b, byte[rsi + r12]
	cmp		r13b, 0
	je		end
	cmp		r14b, 0
	je		end
	cmp		r13b, r14b
	jne		end
	inc		r12
	jmp		loop


end:
	sub		r13, r14
	mov		rax, r13
	pop		rsi
	pop		rdi
	ret
