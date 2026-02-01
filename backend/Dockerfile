FROM php:8.4-fpm

# 1. Instalace systémových knihoven pro Postgres, Intl, Zip a Git
RUN apt-get update && apt-get install -y \
    libpq-dev \
    git \
    unzip \
    libicu-dev \
    libzip-dev \
    && docker-php-ext-install pdo pdo_pgsql intl zip

# 2. Xdebug 3 (pro krokování kódu)
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# 3. TVOJE DOPLŇKY: Memory limit a Composer
RUN echo "memory_limit = -1" > /usr/local/etc/php/conf.d/20-extra.ini

# Composer (oficiální doporučený způsob přes COPY je rychlejší než curl)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 4. TVOJE DOPLŇKY: Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

WORKDIR /var/www/html