FROM composer:1.9.0

RUN apk upgrade \
    && apk add --update --no-cache icu-dev\
    && docker-php-ext-install iconv intl mbstring pdo_mysql opcache \
    && mkdir /usr/my_projects

    WORKDIR /usr/my_projects/