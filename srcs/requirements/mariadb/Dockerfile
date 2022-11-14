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

FROM    debian:buster

EXPOSE  3306

RUN     apt-get update -y
RUN     apt-get install -y mariadb-server gettext-base

COPY    ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY    ./conf/db.sql /var/www/db.sql

ARG     _DB_ADMIN_LOGIN=${_DB_ADMIN_LOGIN}
ARG     _DB_ADMIN_PASSWD=${_DB_ADMIN_PASSWD}
ARG     _DB_ROOT_PASSWD=${_DB_ROOT_PASSWD}

RUN     DB_ADMIN_LOGIN=$_DB_ADMIN_LOGIN \
	    DB_ADMIN_PASSWD=${_DB_ADMIN_PASSWD} \
 	    DB_ROOT_PASSWD=${_DB_ROOT_PASSWD} \
	    envsubst < /var/www/db.sql > /var/www/interpreted_db.sql

RUN     service mysql start; \
	    mysql -u root < /var/www/db.sql \
	    && rm -f /var/www/db.sql \
	    && rm -f /var/www/interpreted_db.sql;

CMD     [ "mysqld" ]
