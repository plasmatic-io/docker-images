FROM php:8.1.0-fpm
RUN apt-get update && apt-get install -y libpq-dev

RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
RUN docker-php-ext-install pdo pdo_pgsql

# install redis
RUN mkdir -p /usr/src/php/ext/redis \
    && curl -fsSL https://pecl.php.net/get/redis | tar xvz -C "/usr/src/php/ext/redis" --strip 1 \
    && docker-php-ext-install redis

COPY laravel-php/8.1/fpm/start.sh /usr/local/bin/start

EXPOSE 9000
ENTRYPOINT ["docker-php-entrypoint"]
CMD ["/usr/local/bin/start"]
