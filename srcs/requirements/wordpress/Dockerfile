# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/04 13:08:51 by aribesni          #+#    #+#              #
#    Updated: 2022/11/04 13:08:52 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    debian:buster

RUN     apt-get update -y

RUN     apt-get upgrade -y

RUN     apt-get -y install wget

RUN     apt-get install -y php7.3 php-fpm php-mysql mariadb-client

RUN     wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

RUN     cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN		chown -R root:root /var/www/wordpress

# COPY    php.ini /etc/php/7.3/fpm/php.ini

COPY    www.conf etc/php/7.3/fpm/pool.d/www.conf

