FROM php:5.6-apache
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN docker-php-ext-install gd \
    && docker-php-ext-install pdo_mysql 

