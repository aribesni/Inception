FROM        debian:buster

EXPOSE      9000

RUN         apt-get update && apt-get upgrade -y

RUN         apt-get -y install wget

RUN         apt-get install -y php7.3 php-fpm php-mysql mariadb-client

RUN         apt-get install unzip

RUN         wget https://wordpress.org/wordpress-6.0.tar.gz -P /var/www

RUN         cd /var/www && tar -xzf wordpress-6.0.tar.gz && rm wordpress-6.0.tar.gz

COPY	    ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN		    chown -R root:root /var/www/wordpress

RUN         wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN         chmod +x wp-cli.phar

RUN         mv wp-cli.phar /usr/local/bin/wp

COPY 		./conf/auto-config.sh ./auto-config.sh

RUN         chmod +x ./auto-config.sh

ENTRYPOINT  ["bash", "auto-config.sh"]

CMD         ["/usr/sbin/php-fpm7.3", "--nodaemonize"]