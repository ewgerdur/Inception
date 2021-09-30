FROM debian:buster

RUN apt-get update
RUN apt-get install -y php-fpm php-mysql php-mbstring php-gd redis-server php-redis php-xml wget nano
RUN apt-get -y install php7.3 php7.3-fpm php7.3-mysql php7.3-curl \
php7.3-gd php7.3-intl php7.3-mbstring php7.3-soap \
php7.3-xml php7.3-xmlrpc php7.3-zip \
php7.3-common php7.3-gmp php7.3-cli php7.3-imap

RUN mkdir -p /run/php/
RUN	touch /run/php/php7.3-fpm.pid
COPY ./srcs/   /var/www/

RUN sed -ie 's#/run/php/php7.3-fpm.sock#9000#' /etc/php/7.3/fpm/pool.d/www.conf
RUN chown -R www-data:www-data /var/www/*;

RUN chmod +x /var/www/wpress_php.sh
ENTRYPOINT ["/var/www/wpress_php.sh"]

CMD /usr/sbin/php-fpm7.3 -F
