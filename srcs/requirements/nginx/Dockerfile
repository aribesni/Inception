FROM    debian:buster

EXPOSE  443

RUN     apt-get update && apt-get upgrade -y

RUN     apt install nginx -y

RUN     apt-get install openssl -y

RUN     mkdir -p /etc/nginx/ssl

RUN     openssl req -newkey rsa:4096 -days 42 -nodes -x509 -out /etc/ssl/certs/inception.crt -keyout /etc/ssl/private/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=aribesni.42.fr/UID=aribesni"

COPY    conf/nginx.conf /etc/nginx/nginx.conf

RUN     chmod 755 /var/www/html

RUN     chown -R www-data:www-data /var/www/html

CMD     ["nginx", "-g", "daemon off;"]