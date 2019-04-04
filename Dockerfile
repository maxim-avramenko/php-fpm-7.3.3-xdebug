FROM mcsim/php-fpm-7.3.3:latest

ARG TIME_ZONE=Europe/Moscow

ENV TZ=${TIME_ZONE}

RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

RUN pecl install xdebug-2.7.0 \
    && docker-php-ext-enable xdebug

COPY config/php.ini-development ${PHP_INI_DIR}/php.ini

COPY conf.d/xdebug.ini ${PHP_INI_DIR}/conf.d/xdebug.ini

CMD ["php-fpm"]