#!bin/bash

sleep 10

wp config create	--allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'

sleep 2
wp core install     --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root --path='/var/www/wordpress'
wp user create      --allow-root --role=author $USER_LOGIN $USER_MAIL --user_pass=$USER_PASS --path='/var/www/wordpress'
# wp theme install    --allow-root $THEME_NAME --activate --path='/var/www/wordpress/wp-content/themes'

mkdir -p /run/php/

exec "$@"
