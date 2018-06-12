# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amedvedi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/08 12:57:20 by amedvedi          #+#    #+#              #
#    Updated: 2018/06/08 12:57:22 by amedvedi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libftprintf.a
CC = gcc
FLAGS= -Wall -Wextra -Werror

OBJECTS = 	ft_printf/treat_c_conv.o\
			ft_printf/treat_d_conv.o\
			ft_printf/treat_o_conv.o\
			ft_printf/treat_u_conv.o\
			ft_printf/treat_p_conv.o\
			ft_printf/treat_no_conv.o\
			ft_printf/ft_printf.o\
			ft_printf/assign_conv.o\
			ft_printf/format_du.o\
			ft_printf/fill_env.o\
			ft_printf/treat_s_conv.o\
			ft_printf/treat_ss_conv.o\
			ft_printf/unicode_conv.o\
			ft_printf/treat_x_conv.o

all: $(NAME)

$(OBJECTS) : %.o: %.c
	$(CC) -g -c $(FLAGS) -I libftprintf/ -I ft_printf/ $< -o $@
	

$(NAME): $(OBJECTS)
	$(MAKE) -C libftprintf/
	ar rc libftprintf.a $(OBJECTS) libftprintf/*.o

clean:
	$(MAKE) -C libftprintf/ clean
	-rm $(OBJECTS)
fclean : clean
	$(MAKE) -C libftprintf/ fclean
	-rm -v $(NAME)
re: fclean all
