# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/04 13:08:19 by aribesni          #+#    #+#              #
#    Updated: 2022/11/04 13:08:20 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM        debian:buster

RUN         apt update -y

RUN         apt upgrade -y

RUN         apt-get install mariadb-server -y

COPY        conf/50-server.cnf  etc/mysql/mariadb.conf.d/50-server.cnf

COPY        ./script.sh /

RUN         chmod +x /script.sh

ENTRYPOINT  ["/bin/sh", "-c", "/conf/script.sh"]
