# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lperret <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/30 12:40:40 by lperret           #+#    #+#              #
#    Updated: 2018/05/14 16:23:07 by lperret          ###   ########.fr        #
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

SRC = ft_bzero.s ft_strcat.s ft_isalpha.s ft_isdigit.s ft_isalnum.s ft_isascii.s ft_isprint.s\
	  ft_toupper.s ft_tolower.s ft_puts.s\
	  ft_strlen.s ft_memset.s ft_memcpy.s ft_strdup.s

OBJ = $(addprefix $(OBJ_PATH),$(SRC:.s=.o))

all: $(NAME) test | silent

silent:
	@:

$(NAME): obj $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "\033[32mLinking & indexing" [ $(NAME) ] "\033[0m"

obj:
	@mkdir $(OBJ_PATH)

$(OBJ_PATH)%.o:$(SRC_PATH)%.s $(INCLUDES_PATH)
	@$(AS) $(ASFLAGS) -o $@ -s $<
	@echo "\033[33mCompiling" [ $< ] "\033[0m"

clean: clean_test
	@rm -rf $(OBJ_PATH)
	@echo "\033[0;31mCleaning object files" [ $(NAME) ] "\033[0m"

fclean: clean
	@rm -rf $(NAME)
	@echo "\033[0;31mDelete" [ $(NAME) ]  "\033[0m"

re: fclean all

test: $(OBJ) main.c | silent
	@$(CC) -I$(INCLUDES_PATH) main.c $(LIBS) -o $(NAME_TEST)
	@echo "\033[32mLinking & indexing" [ $(NAME_TEST) ] "\033[0m"

clean_test:
	@/bin/rm -f $(NAME_TEST)
	@echo "\033[0;31mDelete" [ $(NAME_TEST) ]  "\033[0m"
