# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:11:58 by lperret           #+#    #+#              #
#    Updated: 2018/05/16 12:08:34 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strcat

_ft_strcat:
	push	rdi
	push	rsi
	push	rcx
	mov		rax, rdi

s1:
	mov		r13, 0
s1_loop:
	cmp		byte[rdi + r13], 0
	je		cat
	inc		r13
	jmp		s1_loop

cat:
	mov		r14, 0
s2_loop:
	cmp		byte[rsi + r14], 0
	je		end
	mov		cl, [rsi + r14]
	mov		[rdi + r13], cl
	inc		r13
	inc		r14
	jmp		s2_loop

end:
	mov		byte[rdi + r13], 0
	pop		rcx
	pop		rsi
	pop		rdi
	ret
