# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:08:18 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:08:22 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_isalpha

_ft_isalpha:
	cmp		rdi, 64
	jle		no
	cmp		rdi, 90
	jle		yes
	cmp		rdi, 96
	jle		no
	cmp		rdi, 122
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
