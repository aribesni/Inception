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

RUN     apt update

RUN     apt upgrade

RUN     apt install nginx -y

RUN     apt install vim -y

RUN     apt install curl -y

RUN     mkdir -p /etc/nginx/ssl

RUN     apt install openssl -y

RUN     openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=aribesni.42.fr/UID=aribesni"

RUN     mkdir -p /var/run/nginx

COPY    conf/nginx.conf /etc/nginx/nginx.conf

RUN     chmod 755 /var/www/html

RUN     chown -R www-data:www-data /var/www/html

CMD     ["nginx", "-g", "daemon off;"]