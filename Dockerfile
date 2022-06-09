FROM nginx:stable

RUN apt-get update \
  && apt-get install -qq -y --no-install-recommends \
  iputils-ping

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/conf.d /etc/nginx/conf.d
ADD nginx/cert /etc/nginx/cert
