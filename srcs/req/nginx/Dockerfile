FROM debian:buster

RUN apt-get update
RUN apt-get install -y openssl php-gd php-xml nginx

COPY ./conf/*.conf ./

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey \
rsa:2048 -keyout /etc/nginx/ssl/wgerdur.key \
-out /etc/nginx/ssl/wgerdur.crt \
-subj '/C=RU/ST=Moscow/L=Moscow/O=School42/OU=School21/CN=wgerdur42'

RUN chmod -R 777 /etc/nginx/ssl/wgerdur*

RUN rm -Rf /etc/nginx/sites-enabled/default
RUN rm -Rf /etc/nginx/sites-available/default
RUN mv nginx.conf /etc/nginx/sites-available/nginx.conf
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
