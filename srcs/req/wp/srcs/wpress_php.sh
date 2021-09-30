#!/usr/bin/env bash
if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p /var/www/html/
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	cd var/www/html/
	mv /usr/share/wordpress/* /var/www/html
	wp core download --allow-root
	mv /var/www/wp-config.php /var/www/html/
	wp core install --allow-root \
		--title=${TITLE} \
		--url=${URL} \
		--admin_user=${ADMIN_USER} \
		--admin_password=${ADMIN_PASSWORD} \
		--admin_email=${ADMIN_EMAIL}
		# add for skip creation default themes
  			#--skip-themes
		# add for skip creation default plugins
  			#--skip-plugins
	#wp theme install --allow-root bold-headline
	wp user create --allow-root wgerdur2 wgerdur2@42.fr --user_pass=qwer1234
	wp user create --allow-root wgerdur3 wgerdur3@42.fr --user_pass=qwer1234
	rm -rf /var/www/html/wordpress/wp-config-sample.php
fi
service redis-server start
exec "$@"
