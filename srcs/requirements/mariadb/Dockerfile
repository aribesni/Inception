FROM 		debian:buster

EXPOSE 		3306

RUN			apt-get update -y

RUN 		apt-get install -y mariadb-server gettext-base

COPY		./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY		./conf/script.sh /script.sh

ENTRYPOINT	["bash", "script.sh"]

CMD			["mysqld"]
