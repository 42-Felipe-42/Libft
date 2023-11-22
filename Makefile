# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plangloi <plangloi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 17:37:56 by plangloi          #+#    #+#              #
#    Updated: 2023/11/17 12:25:49 by plangloi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

GCC = gcc

RM = rm -f

FLAGS = -Wall -Wextra -Werror

FILES = 	ft_tolower.c \
		ft_toupper.c \
		ft_atoi.c \
		ft_bzero.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_strchr.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strdup.c \
		ft_calloc.c \
		ft_putstr_fd.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_striteri.c \
		ft_strmapi.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_itoa.c \
		ft_split.c \

OBJS = $(FILES:.c=.o)

BONUS = ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c \
		
BOBJS = $(BONUS:.c=.o)

.c.o:
		$(GCC) $(FLAGS) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJS)
		ar rc $(NAME) $(OBJS)

all :		$(NAME)

clean :
		$(RM) $(OBJS) $(BOBJS)

fclean :	clean
		$(RM) $(NAME)

re : fclean all

bonus :	$(OBJS) $(BOBJS)
		ar rc $(NAME) $(OBJS) $(BOBJS)