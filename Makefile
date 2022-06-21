# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jledesma <jledesma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/23 13:20:35 by jledesma          #+#    #+#              #
#    Updated: 2022/05/15 18:26:31 by jledesma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

SRCS	= ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
ft_substr.c ft_strjoin.c  ft_strmapi.c ft_strtrim.c ft_itoa.c ft_split.c \
ft_striteri.c


BONUS = ft_lstnew_bonus.c	ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
	
OBJS	=	${SRCS:.c=.o}

OBJS_BONUS	=	${BONUS:.c=.o}

CC	= gcc

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

all : $(NAME)

$(NAME): 
	@${CC} -c ${CFLAGS} ${SRCS} ${BONUS}
	@ar rs ${NAME} ${OBJS}
	
# Rule to remove all files and directory
clean: 
		@${RM} ${OBJS} ${OBJS_BONUS}
		@echo "Clean libft"
# Rule to remove
fclean:		clean
			@${RM} ${NAME}
			@echo "Force clean with remove"
# Bonus
bonus: ${OBJS} ${OBJS_BONUS}
	ar rs ${NAME} ${OBJS} ${OBJS_BONUS}
# Rule to re-make all
re:	fclean all

# Rule for reserve this names and not exist files with this names
.PHONY: all, clean, fclean, re