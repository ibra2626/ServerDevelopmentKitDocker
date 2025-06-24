FROM php:8.2-fpm-alpine3.19 as php82
RUN apk add --no-cache --update libzip-dev
RUN apk add --no-cache --update zip unzip
RUN apk add --no-cache --update git
RUN apk add --no-cache --update curl
RUN apk add --no-cache --update build-base libpng-dev
RUN apk add --no-cache --update linux-headers

RUN docker-php-ext-install zip
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install ctype
RUN docker-php-ext-install fileinfo
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install exif
RUN docker-php-ext-install gd
RUN docker-php-ext-install ftp
RUN docker-php-ext-install pcntl



RUN apk add --no-cache \
        libjpeg-turbo-dev \
        libwebp-dev \
        freetype-dev

RUN docker-php-ext-configure gd --with-jpeg --with-webp --with-freetype
RUN docker-php-ext-install gd

RUN apk add icu-dev
RUN docker-php-ext-configure intl && docker-php-ext-install intl

RUN docker-php-ext-install bz2
RUN CFLAGS="$CFLAGS -D_GNU_SOURCE" docker-php-ext-install sockets


#RUN apk add --no-cache $PHPIZE_DEPS \
#    && pecl install xdebug \
#    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

