FROM php:5.6-fpm-alpine
RUN apk update
RUN apk add --no-cache --update libzip-dev
RUN apk add --no-cache --update zip unzip
RUN apk add --no-cache --update git
RUN apk add --no-cache --update curl
RUN apk add --no-cache --update build-base libpng-dev

RUN docker-php-ext-install zip
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install ctype
RUN docker-php-ext-install fileinfo
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install tokenizer
RUN docker-php-ext-install json
RUN docker-php-ext-install exif
RUN docker-php-ext-install gd


RUN apk add --no-cache \
        libjpeg-turbo-dev \
        libpng-dev \
        libwebp-dev \
        freetype-dev

RUN docker-php-ext-configure gd --with-jpeg --with-webp --with-freetype
RUN docker-php-ext-install gd
    
# RUN apk add update && \
#  apk add install -y \
#     nodejs npm

# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
#  apk add install -y nodejs

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer