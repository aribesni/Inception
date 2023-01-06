all :
			docker-compose -f ./srcs/docker-compose.yml build

up :
			docker-compose -f ./srcs/docker-compose.yml up --build -d
#			sh ./srcs/requirements/wordpress/conf/get_theme.sh

down :
			docker-compose -f ./srcs/docker-compose.yml down

clean :		down
			rm -rf /home/aribesni/data/wp/*
			rm -rf /home/aribesni/data/db/*
			docker volume rm srcs_wp srcs_db

fclean :	clean
			docker system prune -af

re :
			clean up

.PHONY : 	all clean fclean re up down
