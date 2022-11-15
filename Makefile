# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/04 13:07:33 by aribesni          #+#    #+#              #
#    Updated: 2022/11/04 13:07:35 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all :
			docker-compose -f ./srcs/docker-compose.yml build

up :
			docker-compose -f ./srcs/docker-compose.yml up --build -d

down :
			docker-compose -f ./srcs/docker-compose.yml down

clean :		down
			docker volume rm srcs_wp srcs_db
			rm -rf ~/data/wp/*
			rm -rf ~/data/db/*

fclean :	clean
			docker system prune -af


.PHONY : 	all clean fclean re up down
