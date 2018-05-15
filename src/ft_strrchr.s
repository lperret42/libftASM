# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strrchr.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 16:27:58 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 16:34:46 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strrchr

_ft_strrchr:
	push	rdi
	push	rsi
	mov		r12, 0

loop:
	cmp		byte[rdi], sil
	je		founded
	cmp		byte[rdi], 0
	je		end
	inc		rdi
	jmp		loop

founded:
	mov		r13, rdi
	inc		rdi
	jmp		loop

end:
	mov		rax, r13
	pop		rsi
	pop		rdi
	ret
