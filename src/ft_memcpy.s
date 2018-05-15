# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:10:24 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:10:54 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_memcpy

_ft_memcpy:

check:
	cmp		rdi, 0
	je		s1_is_null
	cmp		rsi, 0
	je		s2_is_null

loop:
	push	rdi
	push	rsi
	push	rcx
	push	r8
	mov		r8, rdi
	cld
	mov		rcx, rdx
	rep		movsb
	mov		rax, r8
	pop		r8
	pop		rcx
	pop		rsi
	pop		rdi
	ret

s1_is_null:
	cmp		rsi, 0
	je		end
	jmp		loop

s2_is_null:
	cmp		rdi, 0
	je		end
	jmp		loop

end:
	ret
