# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/15 14:07:41 by lperret           #+#    #+#              #
#    Updated: 2018/05/15 14:07:43 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	je		end
	call	_ft_isdigit
	cmp		rax, 1
	je		end
	mov		rax, 0

end:
	ret
