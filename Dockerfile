ARG CONTAINER_VERSION=latest

FROM jheimbach/php-pimcore:${CONTAINER_VERSION}
ARG XDEBUG_INI=./xdebug.ini
ARG XDEBUG_CONF_FILE=$PHP_INI_DIR/conf.d/xdebug.ini


RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

COPY ${XDEBUG_INI} $XDEBUG_CONF_FILE

COPY local_settings /usr/local/bin/xdebug_local_settings

ENV XDEBUG_CONF_FILE=$XDEBUG_CONF_FILE \
    XDEBUG_IDE_KEY="PHPSTORM" \
    XDEBUG_DEFAULT_ENABLE="On" \
    XDEBUG_CLI_ENABLE="Off" \
    XDEBUG_REMOTE_ENABLE="On" \
    XDEBUG_REMOTE_CONNECT_BACK="Off" \
    XDEBUG_REMOTE_AUTOSTART="Off"\
    XDEBUG_REMOTE_LOG="\/var\/log\/xdebug_remote.log"

RUN xdebug_local_settings

# Cleanup
RUN rm /usr/local/bin/xdebug_local_settings
