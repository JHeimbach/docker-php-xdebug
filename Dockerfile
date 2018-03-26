FROM jheimbach/php-basic:latest
ENV XDEBUGINI ./xdebug.ini

RUN pecl install xdebug
COPY ${XDEBUGINI} /usr/local/etc/php/conf.d/xdebug.ini
RUN docker-php-ext-enable xdebug