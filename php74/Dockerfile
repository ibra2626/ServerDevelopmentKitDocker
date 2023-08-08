FROM php:7.4-fpm
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install libzip-dev -y
RUN apt-get install zip unzip -y
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y build-essential libpng-dev

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

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
    
RUN apt-get update && \
 apt-get install -y \
    nodejs npm

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
 apt-get install -y nodejs

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer