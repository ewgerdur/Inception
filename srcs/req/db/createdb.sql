CREATE DATABASE $DB;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $DB.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;