# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    auto-config.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/07 18:36:15 by aribesni          #+#    #+#              #
#    Updated: 2022/11/07 18:36:17 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

sleep 10

wp config create    --allow-root \
                    --dbname=$SQL_DATABASE \
                    --dbuser=$SQL_USER \
                    --dbpass=$SQL_PASSWORD \
                    --dbhost=mariadb:3306 --path='/var/www/wordpress'