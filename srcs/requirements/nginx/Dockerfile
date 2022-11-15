FROM debian:buster

RUN apt-get update
RUN apt-get install -y openssl nginx 

EXPOSE 443

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/certif.pem -keyout /etc/ssl/private/certif.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=studs/CN=aribesni.42.fr"
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]