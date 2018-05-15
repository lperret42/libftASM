# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:14:30 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:14:32 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_toupper

_ft_toupper:
	mov		rax, rdi
	cmp		rdi, 97
	jl		end
	cmp		rdi, 123
	jl		toupper
	jmp		end

toupper:
	sub		rax, 32
	jmp		end

end:
	ret
