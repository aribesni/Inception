#!/bin/bash

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output-document /usr/local/bin/wp;
chmod +x  /usr/local/bin/wp;
mv /var/www/wp-config.php /var/www/html/;
cd /var/www/html;
wp core download --allow-root;
wp core install --allow-root --url=${WP_DOMAIN_NAME} --title="inception" --admin_user=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --debug --path="/var/www/html/"
wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWD};
wp theme install --allow-root ${WP_THEME_NAME} --activate

exec "$@"