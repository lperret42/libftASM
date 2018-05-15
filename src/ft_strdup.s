# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:12:13 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:12:40 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strdup
extern _ft_strlen
extern _malloc
extern _ft_memcpy

_ft_strdup:
	mov		r12, rdi
	call	_ft_strlen
	inc		rax
	mov		r13, rax
	mov		rdi, rax

	push	rbp
	mov		rbp, rsp
	call	_malloc
	pop		rbp

	cmp		rax, 0
	je		end
	mov		rdi, rax
	mov		rsi, r12
	mov		rdx, r13

	call	_ft_memcpy
	jmp		end

end:
	ret
