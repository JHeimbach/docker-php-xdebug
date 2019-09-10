ARG CONTAINER_VERSION=php7.3-fpm

FROM wordpress:${CONTAINER_VERSION}

RUN rm -rf /var/lib/apt/lists/* && apt-get update
RUN apt-get install -y autoconf automake libtool nasm cmake make pkg-config libz-dev build-essential g++

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

ARG XDEBUG_INI=./xdebug.ini
ARG XDEBUG_CONF_FILE=$PHP_INI_DIR/conf.d/xdebug.ini

COPY ${XDEBUG_INI} $XDEBUG_CONF_FILE

# Cleanup
RUN apt-get remove -y autoconf automake libtool nasm cmake make pkg-config libz-dev build-essential g++ \
        && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
