# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memchr.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:07:34 by lperret           #+#    #+#              #
#    Updated: 2018/05/16 12:29:01 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_memchr

_ft_memchr:
	push	rdi
	push	rdx

loop:
	cmp		rdx, 0
	jle		not_founded
	cmp		byte[rdi], sil
	je		founded
	cmp		byte[rdi], 0
	je		not_founded
	inc		rdi
	dec		rdx
	jmp		loop

founded:
	mov		rax, rdi
	jmp		end

not_founded:
	mov		rax, 0
	jmp		end

end:
	pop		rdx
	pop		rdi
	ret
