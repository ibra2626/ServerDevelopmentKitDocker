FROM php:8.1-fpm-alpine3.19 as php8
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
RUN docker-php-ext-install exif
RUN docker-php-ext-install gd
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

RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-3.1.0 \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer



RUN apk add --update supervisor

COPY ./supervisor/supervisord.ini /etc/supervisor.d/horizon.ini

COPY ./start.sh /tmp/start.sh

RUN chmod +x /tmp/start.sh

RUN touch /var/run/supervisord.sock

RUN chown root:root /var/run/supervisord.sock

RUN chmod 777 /var/run/supervisord.sock

ENTRYPOINT ["/tmp/start.sh"]