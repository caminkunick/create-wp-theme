FROM php:7.4-apache

WORKDIR /var/www/html

RUN apt-get update && apt-get -qq install -y unzip wget git

RUN wget -O wp.zip https://wordpress.org/latest.zip

RUN unzip wp.zip && rm wp.zip

RUN mv wordpress/* . && rm -rf wordpress

RUN chmod -R 777 wp-content

RUN docker-php-ext-install mysqli && docker-php-ext-install pdo_mysql