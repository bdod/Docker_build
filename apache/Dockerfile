FROM php:7.0-apache

COPY errors.ini /usr/local/etc/php/conf.d/errors.ini
COPY apache2.conf /etc/apache2/apache2.conf

RUN apt-get update && apt-get install libssl-dev -y
RUN a2enmod rewrite
RUN pecl install mongodb \
    && docker-php-ext-enable mongodb
