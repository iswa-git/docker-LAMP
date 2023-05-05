FROM php:7.3-apache

RUN apt-get update && apt-get install -y \
    libicu-dev \
    && docker-php-ext-install \
    intl \
    && docker-php-ext-enable \
    intl

#FROM nginx

#WORKDIR /usr/share/nginx/html

#COPY . . 
#COPY ./DR/index.html ./
