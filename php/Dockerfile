FROM php:5.6-apache
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt-get update
RUN apt-get install libjpeg-devel
RUN apt-get install php5-mysql
RUN docker-php-ext-install gd
RUN docker-php-ext-install pdo_mysql 

