FROM alpine:3.16

COPY packages /tmp/
RUN xargs -t apk add --no-cache < /tmp/packages
RUN ln -sn /usr/bin/php81 /usr/local/bin/php

RUN wget -O /usr/local/bin/composer https://getcomposer.org/download/2.3.10/composer.phar \
    && echo "d808272f284fa8e0f8b470703e1438ac8f362030bbc9d12e29530277d767aff0  /usr/local/bin/composer" | sha256sum -c \
    && chmod +x /usr/local/bin/composer

COPY composer.json composer.lock /opt/phan/
RUN composer -d /opt/phan install

COPY entry /
