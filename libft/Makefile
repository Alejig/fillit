# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aljigmon <aljigmon@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/28 15:08:21 by aljigmon          #+#    #+#              #
#    Updated: 2020/08/05 11:23:20 by aljigmon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS_NAMES = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c \
             ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
             ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c \
             ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c \
             ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c \
             ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c \
             ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c \
             ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c \
             ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
             ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c \
             ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c \
             ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c \
             ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c \
             ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c \
             ft_lstiter.c ft_lstmap.c ft_power.c ft_sqrt.c \
             ft_lstsize.c ft_strreplace.c ft_puterr.c ft_strjoin_f.c \
             ft_strchr_i.c get_next_line.c ft_lstappend.c ft_strchange.c
SRCS_DIR = sources/
SRCS = $(addprefix $(SRCS_DIR), $(SRCS_NAMES))
OBJS_DIR = objs/
OBJS_NAMES = $(SRCS_NAMES:.c=.o)
OBJS = $(addprefix $(OBJS_DIR), $(OBJS_NAMES))
CC = clang
CFLAGS = -Wall -Wextra -Werror
NAME = libft.a
HEADERS_DIR = includes/
HEADERS_NAMES = get_next_line.h libft.h
HEADERS = $(addprefix $(HEADERS_DIR), $(HEADERS_NAMES))
GREEN = \033[32;1m
WHITE = \033[0m

all: $(NAME)

$(NAME): $(OBJS_DIR) $(OBJS) $(HEADERS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "$(GREEN)$(NAME) generated$(WHITE)"

$(OBJS_DIR):
	@mkdir $(OBJS_DIR)

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c
	@$(CC) $(CFLAGS) -I$(HEADERS_DIR) -o $@ -c $<

clean:
	@rm -rf $(OBJS_DIR)
	@echo "deleting $(OBJS_DIR)"

fclean: clean
	@rm -rf $(NAME)
	@echo "deleting $(NAME)"

re: fclean all
