FROM debian:buster

RUN apt-get update
RUN apt-get install -y default-mysql-server procps

EXPOSE 3306

RUN sed -ie 's3bind-address3#bind-address3' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -ie 's3#port3port3' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY db.sh    /var/www/
RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod +x /var/www/db.sh
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["/var/www/db.sh"]

CMD ["mysqld"]