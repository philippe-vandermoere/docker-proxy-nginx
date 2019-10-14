FROM nginx:1.16.1-alpine

LABEL maintainer="Philippe VANDERMOERE <philippe@wizacha.com"

RUN set -xe; \
    apk add openssl; \
    openssl dhparam -out /etc/nginx/dhparam.pem 2048; \
    rm -f /etc/nginx/conf.d/*;

COPY ./config/*.conf /etc/nginx/
