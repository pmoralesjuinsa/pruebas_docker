FROM php:7.4.1-apache AS miapachephpcom

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && a2enmod rewrite

VOLUME /var/www/html

EXPOSE 80

FROM mysql:latest AS mimysqlcom

EXPOSE 3306

VOLUME /var/lib/mysql

ENV MYSQL_ROOT_PASSWORD 123456
ENV MYSQL_DATABASE pruebas

ADD creaBD.sql /docker-entrypoint-initdb.d/creaBD.sql