FROM php:7.4.1-apache AS miapachephp

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

VOLUME /var/www/html

EXPOSE 3306

FROM mysql:latest AS mimysql

EXPOSE 80

VOLUME /var/lib/mysql

ENV MYSQL_ROOT_PASSWORD 123456
ENV MYSQL_DATABASE pruebas

ADD creaBD.sql /docker-entrypoint-initdb.d/creaBD.sql