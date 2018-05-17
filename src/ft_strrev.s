# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strrev.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 17:24:39 by lperret           #+#    #+#              #
#    Updated: 2018/05/16 12:07:30 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strrev
extern _ft_strlen

_ft_strrev:
	cmp		rdi, 0
	je		error
	push	rdi
	push	rcx
	mov		r12, rdi
	call	_ft_strlen
	add		r12, rax
	dec		r12

loop:
	cmp		r12, rdi
	jle		end
	mov		al, [rdi]
	mov		cl, [r12]
	mov		[rdi], cl
	mov		[r12], al
	inc		rdi
	dec		r12
	jmp		loop

error:
	mov		rax, 0
	ret

end:
	pop		rcx
	pop		rdi
	mov		rax, rdi
	ret
