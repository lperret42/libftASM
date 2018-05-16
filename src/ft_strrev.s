# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strrev.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 17:24:39 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 17:54:35 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strrev
extern _ft_strlen

_ft_strrev:
	mov		byte[rdi], 48    ; bus error
	jmp		end

	push	rcx
	push	r15
	push	rdi
	mov		r13, rdi
	mov		r12, r13
	call	_ft_strlen
	add		r12, rax
	dec		r12

loop:
	cmp		r12, r13
	jle		end
	;mov		r15b, [r12]
	pop rdi
	mov		r15b, 48
	mov		byte[rdi], 48    ; bus error
	pop		r15
	jmp		end
	;mov		r15b, [r13]
	;mov		byte[rdi], cl    ; bus error
	mov		byte[rdi], r15b    ; bus error
	mov		byte[r12], r15b
	inc		r13
	dec		r12
	jmp		loop

end:
	pop		rcx
	;pop		rdi
	;mov		rax, rdi
	mov		rax, 0
	ret
