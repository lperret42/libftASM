# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:13:08 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:13:19 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strlen

_ft_strlen:
	push	rdi
	mov		al, 0
	mov		rcx, -1
	cld
	repne	scasb
	not		rcx
	dec		rcx
	mov		rax, rcx
	pop		rdi
	ret
