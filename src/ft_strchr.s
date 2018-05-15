# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strchr.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:07:34 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 15:38:12 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strchr

_ft_strchr:
	push	rdi
	push	rsi

loop:
	cmp		byte[rdi], sil
	je		founded
	cmp		byte[rdi], 0
	je		not_founded
	inc		rdi
	jmp		loop

founded:
	mov		rax, rdi
	jmp		end

not_founded:
	mov		rax, 0
	jmp		end

end:
	pop		rsi
	pop		rdi
	ret
