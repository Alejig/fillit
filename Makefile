NAME = fillit

CC = clang

CFLAGS = -Wall -Wextra -Werror

HEADERS_DIR = includes/

HEADERS_NAME = func_fillit.h

HEADERS = $(addprefix $(HEADERS_DIR), $(HEADERS_NAME))

HEADERS_LIBFT = libft/includes/libft.h

LIBFT = libft/libft.a

SRCS_DIR = sources/

SRCS_NAMES = check_pieces_2_func_fillit.c \
			 check_pieces_3_func_fillit.c \
			 check_pieces_4_func_fillit.c \
			 check_pieces_func_fillit.c \
			 display_func_fillit.c \
			 free_func_fillit.c \
			 ft_cut_tab.c \
			 ft_init_tab.c \
			 ft_make_bigger.c \
			 ft_sqrt_fillit.c \
			 list_func_fillit.c \
			 main.c \
			 remove_piece_func_fillit.c \
			 solver_func_fillit.c \
			 write_pieces_2_func_fillit.c \
			 write_pieces_3_func_fillit.c \
			 write_pieces_4_func_fillit.c \
			 write_pieces_func_fillit.c \
			 read_func_fillit.c \
			 ft_get_first_elem.c

SRCS = $(addprefix $(SRCS_DIR), $(SRCS_NAMES))

SRC_LIBFT = libft/sources/ft_strcmp.c \
			libft/sources/ft_putstr.c \
			libft/sources/ft_putendl.c \
			libft/sources/ft_putchar.c \
			libft/sources/ft_strdel.c \
			libft/sources/ft_strlen.c \
			libft/sources/ft_memset.c
HEADERS_DIR_LIBFT = libft/includes/

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(LIBFT) $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME)

$(LIBFT): $(SRC_LIBFT) $(HEADERS_LIBFT)
	make -C libft

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -o $@ -c $< -I $(HEADERS_DIR_LIBFT) -I $(HEADERS_DIR)

clean:
	rm -rf $(OBJS)
	make -C libft clean

fclean: clean
	rm -rf $(NAME)
	rm -rf $(LIBFT)

re:	fclean all
