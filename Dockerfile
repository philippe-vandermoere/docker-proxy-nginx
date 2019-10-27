FROM nginx:1.16.1-alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Philippe VANDERMOERE <philippe@wizacha.com" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="docker-proxy-php" \
    org.label-schema.vcs-ref=${VCS_REF} \
    org.label-schema.vcs-url="https://github.com/philippe-vandermoere/docker-proxy-php" \
    org.label-schema.schema-version="1.0.0"

COPY ./config/*.conf /etc/nginx/
