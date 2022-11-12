# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/04 13:08:38 by aribesni          #+#    #+#              #
#    Updated: 2022/11/04 13:08:40 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:buster

EXPOSE  4430

RUN     apt-get update -y

RUN     apt-get upgrade -y

RUN     apt-get install nginx -y

RUN     apt-get install vim -y

RUN     apt-get install htop -y

RUN     mkdir -p /etc/nginx/ssl

RUN     apt-get install openssl -y

RUN     openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=aribesni.42.fr/UID=aribesni"

# RUN     mkdir -p /var/run/nginx

COPY    ./conf/default /etc/nginx/sites-enabled/default

# RUN     chmod 755 /var/www/wordpress

# RUN     chown -R www-data:www-data /var/www/wordpress

CMD     [ "nginx", "-g", "daemon off;" ]