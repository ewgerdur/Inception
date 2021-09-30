#!/usr/bin/env bash
if [ ! -d var/lib/mysql/wp ]; then
service mysql start
chmod 777 /var/run/mysqld/mysqld.sock
echo "CREATE DATABASE IF NOT EXISTS $DB" | mysql -u root
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'" | mysql -u root
echo "GRANT ALL PRIVILEGES ON $DB.* TO '$MYSQL_USER'@'%'" | mysql -u root
echo "FLUSH PRIVILEGES" | mysql -u root
echo "SET PASSWORD FOR 'root'@localhost'= PASSWORD('$MYSQL_ROOT_PASSWORD')" mysql -u root
#createdb.sql
mysqladmin -u root password $ROOT_PASSWORD
service mysql stop
else
mkdir  /var/run/mysqld
touch /var/run/mysqld/mysqld.pid
mkfifo /var/run/mysqld/mysqld.sock
fi
chown -R mysql /var/run/mysqld
exec "$@"
