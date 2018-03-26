FROM jheimbach/php-basic:latest
ENV xdebug_file ./xdebug.ini

RUN pecl install xdebug
COPY ${xdebug_file} /usr/local/etc/php/conf.d/xdebug.ini
RUN docker-php-ext-enable xdebug