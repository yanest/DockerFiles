phpmyadmin

How to use

With MySQL:

docker run --name mysql -e MYSQL_ROOT_PASSWORD=my_password -d mysql
docker run --rm --link mysql:mysql -p 1234:80 nazarpc/phpmyadmin
With MariaDB:

docker run --name mariadb -e MYSQL_ROOT_PASSWORD=my_password -d mariadb
docker run --rm --link mariadb:mysql 1234:80 nazarpc/phpmyadmin
(internally it should be called mysql anyway)

After that commands you'll be able to access phpMyAdmin via http://localhost:1234, press Ctrl+C to stop container, and it will be removed automatically (because of --rm option). Feel free to change 1234 to any port you like.
