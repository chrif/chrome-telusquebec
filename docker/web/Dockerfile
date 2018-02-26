FROM nginx:alpine

COPY web /opt/project/web
COPY docker/web/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /opt/log/nginx

WORKDIR /opt/project

