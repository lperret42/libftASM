# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:13:52 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:14:06 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_tolower

_ft_tolower:
	mov		rax, rdi
	cmp		rdi, 65
	jl		end
	cmp		rdi, 91
	jl		tolower
	jmp		end

tolower:
	add		rax, 32
	jmp		end

end:
	ret
