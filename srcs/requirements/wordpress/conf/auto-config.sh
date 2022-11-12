#!/bin/bash

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

# sleep 10;
# mkdir /var/www/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output-document /usr/local/bin/wp;

chmod +x /usr/local/bin/wp;

mv /var/www/wp-config.php /var/www/wordpress/;

cd /var/www/wordpress;

# wp config create    --allow-root \
#                     --dbname=$SQL_DATABASE \
#                     --dbuser=$SQL_USER \
#                     --dbpass=$SQL_PASSWORD \
#                     --dbhost=mariadb:3306 --path='/var/www/wordpress'

wp core download --allow-root;
wp core install --allow-root --url="aribesni.42.fr" --title="inception" --admin_user="aribesni" --admin_password="mdp" --admin_email="aribesni@student.42.fr" --skip-email --debug --path="/var/www/wordpress/"
wp user create --allow-root "ari" "aristide.besnier.42@gmail.com" --user_pass="mdp_usr";
wp theme install --allow-root "inspiro" --activate

exec "$@"