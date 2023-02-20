# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hait-hsa <hait-hsa@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/20 23:26:19 by hait-hsa          #+#    #+#              #
#    Updated: 2023/02/20 21:58:54 by hait-hsa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PT = libft/

SRC = ${PT}ft_calloc.c ${PT}ft_strdup.c ${PT}ft_substr.c ${PT}ft_strjoin.c \
	${PT}ft_strtrim.c ${PT}ft_split.c ${PT}ft_itoa.c ${PT}ft_strmapi.c ${PT}ft_striteri.c \
	${PT}ft_putchar_fd.c ${PT}ft_putstr_fd.c ${PT}ft_putendl_fd.c ${PT}ft_putnbr_fd.c ${PT}ft_isalpha.c \
	${PT}ft_isdigit.c ${PT}ft_isalnum.c ${PT}ft_isascii.c ${PT}ft_isprint.c ${PT}ft_strlen.c \
	${PT}ft_memset.c ${PT}ft_bzero.c ${PT}ft_memcpy.c ${PT}ft_strlcpy.c ${PT}ft_strlcat.c \
	${PT}ft_toupper.c ${PT}ft_tolower.c ${PT}ft_atoi.c ${PT}ft_memmove.c ${PT}ft_strchr.c \
	${PT}ft_strrchr.c ${PT}ft_strncmp.c ${PT}ft_memchr.c ${PT}ft_memcmp.c ${PT}ft_strnstr.c

FLAGS = -Wall -Wextra -Werror

OBJCTS = ${SRC:.c=.o}

NAME = libft.a

CC = gcc

RM = rm -f
		
%.o : %.c
			${CC} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME} : ${OBJCTS} 
			ar rcs ${NAME} ${OBJCTS}

all: ${NAME}

fclean: clean
		${RM} ${NAME}

clean:
		${RM} ${OBJCTS}

re:	fclean all