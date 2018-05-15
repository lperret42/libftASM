# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:07:34 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:51:28 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_bzero

_ft_bzero:
	push	rsi

loop:
	cmp		rsi, 0
	jle		end
	dec		rsi
	mov		byte[rdi + rsi], 0
	jmp		loop

end:
	pop		rsi
	ret
