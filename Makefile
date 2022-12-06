#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: echavez- <echavez-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/11 18:36:36 by echavez-          #+#    #+#              #
#    Updated: 2022/12/06 01:52:35 by echavez-         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		=	libftprintf.a
DIRSRC		=	./src/
DIRFT		=	./libft/
DIROBJ		=	./depo/
INCLUDE		=	-I ./include/ -I $(DIRFT)
SRC			=	ft_printf.c conversions.c
SRCFT		=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putnbr_base.c ft_uputnbr_base.c
OAUX		=	$(SRC:%=$(DIROBJ)%) $(SRCFT:%=$(DIROBJ)%)
DEPS		=	$(OAUX:.c=.d)
OBJS		=	$(OAUX:.c=.o)

ifdef FLAGS
	ifeq ($(FLAGS), no)
CFLAGS		=
	endif
	ifeq ($(FLAGS), debug)
CFLAGS		=	-Wall -Wextra -Werror -ansi -pedantic -g
	endif
else
CFLAGS		=	-Wall -Wextra -Werror
endif

CC			=	/usr/bin/clang
RM			=	/bin/rm -f
ECHO		=	/bin/echo -e
BOLD		=	"\e[1m"
GREEN		=	"\e[92m"
BLUE		=	"\e[34m"
E0M			=	"\e[0m"

%.o		:		../$(DIRFT)/%.c
				@printf $(GREEN)"Compiling ft_printf object files %-33.33s\r" $@
				@$(CC) $(CFLAGS) $(INCLUDE) -MMD -o $@ -c $<

%.o		:		../$(DIRSRC)/%.c
				@printf $(GREEN)"Compiling ft_printf object files %-33.33s\r" $@
				@$(CC) $(CFLAGS) $(INCLUDE) -MMD -o $@ -c $<

$(NAME)	:		$(OBJS)
				@printf $(E0M)"\n"
				@$(ECHO) $(BOLD) $(BLUE)
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⣀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣠⡄⣶⡖⣿⣟⠀⢸⣿⣾⣿⢹⡟⢻⡷⣾⠿⣿⣴⣶⣄⡄'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⣿⡟⢹⣷⢽⠷⠹⠗⠂⠀⢃⣉⣈⣀⣙⣋⣁⠙⠒⠋⠼⠛⡿⠁'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢰⡿⢿⡆⠀⠘⠓⠀⣁⣠⣤⣶⣦⡘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⡄⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡾⣿⡉⠻⠞⢃⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣦⡙⢿⣿⣿⣿⠇⠰⣦⠘⣿⣿⣿⠇⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⠙⣃⣴⡾⣫⣭⡻⣿⣿⣿⡿⣟⣛⢿⣿⣿⣿⣆⠻⣿⣿⣇⣈⣁⣼⣿⣿⡟⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⡿⢋⣠⣾⣿⣿⡇⡏⠈⢻⣜⣛⣫⡾⠋⢹⡏⣿⣿⣿⣿⣧⡘⣿⣿⣿⣿⢏⣾⡟⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣌⠻⣿⣿⣿⣿⡿⢋⣴⣿⣿⣿⡿⣫⡵⠇⠀⠀⠉⠉⠉⠀⠀⢸⡇⣿⣿⣿⣿⣿⣷⡘⣿⣿⣷⣿⡟⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣷⣌⠻⣿⠟⣰⣿⣿⣿⣿⡟⣼⠃⢠⡄⠀⠀⠀⠀⠀⠀⠀⠘⣷⢻⣿⣿⣿⣿⣿⣷⠘⣿⣿⠟⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠷⢠⠸⣿⣿⣿⣿⣿⢸⠇⠀⣈⠀⠀⠐⠽⠃⠀⠀⠀⠀⠸⡇⣿⣿⣿⣿⣿⣿⣧⠹⠋⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢿⣧⠹⣿⣿⣿⣿⢿⠀⠈⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠒⠢⠍⠊⢿⣧⢻⣿⣿⣿⡼⣇⠀⠓⠒⠐⠂⠀⠀⠀⠀⠀⠀⣸⢇⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⠿⠶⠦⠄⠀⢻⣧⠹⣿⣿⣷⡝⣦⡀⠀⠀⠀⠀⠀⠀⠀⢀⣴⢫⣾⢟⣽⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣭⣤⣀⣀⠀⠀⠀⠀⠀⠹⣷⡙⣿⣿⣿⣮⣝⡷⢦⣤⣤⣤⡴⢾⣫⡵⢟⣵⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⣼⣿⡿⠿⢿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⠀⠘⢿⣎⠻⣿⣿⣿⣿⣿⣶⣶⣶⣿⠿⣫⣴⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠸⠋⠀⢀⣴⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠹⣷⣝⢿⣿⣿⣿⣿⣿⣿⣷⠿⠛⣡⣴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⠋⠀⠀⠀⢀⣀⣠⣤⣤⠀⠀⠀⢸⡆⠈⠻⣷⣝⠿⣿⠷⠟⣋⣥⣶⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⡏⢀⣠⣴⣾⣿⣿⣿⣿⣿⠀⠀⠀⣼⡇⠀⢠⠀⠉⣡⠀⣶⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢀⣼⣿⡇⢠⠸⠀⠀⢹⣇⢹⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⢸⣿⣿⣴⣿⣿⡟⠀⡞⠀⠀⠀⠀⢻⣦⠻⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⣿⣿⣿⣿⣿⠟⢀⠞⠀⠀⠀⠀⠀⠀⠙⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⢀⣼⣿⣿⡿⠟⠁⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) '⠐⠺⠿⠿⠿⠿⠟⠛⠋⠁⠀⠀⠀⠀⠐⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
				@$(ECHO) $(E0M)

				@ar rc $(NAME) $(OBJS)
				@ranlib $(NAME)
				@$(ECHO) '> Compiled'

clean	:
				@($(RM) $(OBJS))
				@($(RM) $(DEPS))
				@$(ECHO) '> Directory cleaned'

all		:		$(NAME)

fclean	:		clean
				@$(RM) $(NAME)
				@$(ECHO) '> Remove executable'

re		:		fclean all

.PHONY	:		all clean fclean re

-include $(DEPS)
