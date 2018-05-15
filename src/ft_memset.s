# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:10:43 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:54:38 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_memset

_ft_memset:
	push	rcx
	mov		r12, rdi
	cld
	mov		al, sil
	mov		rcx, rdx
	rep		stosb
	mov		rax, r12
	pop		rcx
	ret
