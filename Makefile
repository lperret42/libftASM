# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/30 12:40:40 by lperret           #+#    #+#              #
#    Updated: 2018/04/30 12:47:48 by lperret          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NAME_TEST = test

AS = nasm
ASFLAGS = -f macho64
CC = gcc
FLAGS = -Wall -Wextra -Werror

LIBS = -L ./ -lfts

SRC_PATH = ./src/
INCLUDES_PATH = ./includes/
OBJ_PATH = ./obj/

SRC = ft_bzero.s

OBJ = $(addprefix $(OBJ_PATH),$(SRC:.s=.o))

all: $(NAME) | silent

silent:
	@:

$(NAME): obj $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

obj:
	@mkdir $(OBJ_PATH)

$(OBJ_PATH)%.o:$(SRC_PATH)%.c $(INCLUDES_PATH)
	@$(CC) $(FLAGS) -I$(INCLUDES_PATH) $(LIBFT_H) -o $@ -c $<
	@echo "\033[33mCompiling" [ $< ] "\033[0m"

clean:
	@rm -rf $(OBJ_PATH)
	@echo "\033[0;31mCleaning object files" [ $(NAME) ] "\033[0m"

fclean: clean
	@rm -rf $(NAME)
	@echo "\033[0;31mDelete" [ $(NAME) ]  "\033[0m"

re: fclean all

test: $(OBJ) main.c
	$(CC) main.c $(LIBS) -o $(NAME_TEST)

clean_test:
	/bin/rm -f $(NAME_TEST)

ALL_SRC =	ft_bzero.s \
		ft_isalpha.s \
		ft_isdigit.s \
		ft_isalnum.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_puts.s \
		ft_strlen.s \
		ft_strcat.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s \
		ft_strcmp.s \
		ft_putchar.s \
		ft_putchar_fd.s \
		ft_memcmp.s \
		ft_strequ.s \
		ft_strcpy.s \
		ft_memdel.s \
		ft_memalloc.s \
		ft_strnew.s
