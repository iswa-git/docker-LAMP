FROM php:7.3-apache

# WORKDIR /home/test/Documents/480gb_ssd/home/test/Documents/devt/docker_stuff/mai/LAMP/DR

RUN apt-get update && apt-get install -y 
RUN apt-get install -y curl
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libjpeg-dev libfreetype6-dev
RUN apt-get install -y libicu-dev 
COPY DR/apconf/sites-available/site.conf /etc/apache2/sites-enabled/site.conf
COPY DR/apconf/.htaccess /var/www/html/.htaccess
RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring
RUN apt-get update
RUN docker-php-ext-install intl
RUN docker-php-ext-configure intl
RUN a2enmod rewrite
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
RUN service apache2 restart

# RUN docker&& docker-php-ext-install \
#     intl \
#     && docker-php-ext-enable \
#     intl \
#     && docker-php-ext-install \
#     mysqli \
#     && docker-php-ext-enable \
#     mysqli \
#     && docker-php-ext-install \
#     mbstring \
#     && docker-php-ext-enable \
#    mbstring

# RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

#FROM nginx

#WORKDIR /usr/share/nginx/html

#COPY . . 
#COPY ./DR/index.html ./
