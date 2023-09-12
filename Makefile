NAME 	= libft.a

CC 		= gcc
CFLAGS 	= -Wall -Wextra -Werror

SRCS 	= ft_isalpha ft_isdigit ft_isalnum ft_isascii ft_isprint ft_strlen \
		  ft_memset ft_bzero ft_memcpy ft_memmove ft_strlcpy ft_strlcat \
		  ft_toupper ft_tolower ft_strchr ft_strrchr ft_strncmp ft_memchr \
		  ft_memcmp ft_strnstr ft_atoi ft_calloc ft_strdup ft_substr ft_strjoin \
		  ft_strtrim ft_itoa ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd \
		  ft_strmapi ft_striteri ft_split

CFILES 	= $(SRCS:%=%.c)
OFILES 	= $(SRCS:%=%.o)

RM 		= rm -f

$(NAME): 
	$(CC) $(CFLAGS) -c $(CFILES) -I./
	ar -rc $(NAME) $(OFILES)
	
all: $(NAME)

clean:
	$(RM) $(OFILES)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

