# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:08:51 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:09:00 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_isascii

_ft_isascii:
	cmp		rdi, 0
	jl		no
	cmp		rdi, 127
	jle		yes
	jmp		no

yes:
	mov		rax, 1
	jmp		end

no:
	mov		rax, 0
	jmp		end

end:
	ret
