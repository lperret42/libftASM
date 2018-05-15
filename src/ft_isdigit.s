# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:09:47 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:09:48 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_isdigit

_ft_isdigit:
	cmp		rdi, 47
	jle		no
	cmp		rdi, 57
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
