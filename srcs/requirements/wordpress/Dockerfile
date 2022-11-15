FROM debian:buster

RUN apt-get update
RUN apt-get -y install php7.3 php-mysqli php-fpm wget gettext-base

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/auto-config.sh /var/www/
COPY ./conf/wp-config.php /var/www/wp-config.php.tmp

RUN chmod +x /var/www/auto-config.sh

ARG _DB_ADMIN_LOGIN=${_DB_ADMIN_LOGIN}
ARG _DB_ADMIN_PASSWD=${_DB_ADMIN_PASSWD}

RUN DB_ADMIN_LOGIN=$_DB_ADMIN_LOGIN \
	DB_ADMIN_PASSWD=${_DB_ADMIN_PASSWD} \
	envsubst '$$DB_ADMIN_LOGIN $$DB_ADMIN_PASSWD' < /var/www/wp-config.php.tmp > /var/www/wp-config.php
RUN rm -f /var/www/wp-config.php.tmp

ENTRYPOINT [ "/var/www/auto-config.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]