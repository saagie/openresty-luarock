FROM openresty/openresty:1.15.8.1-1-alpine-fat

LABEL maintainer="Saagie"

RUN apk update && apk add git && apk add openssl && apk add libressl-dev && rm -rf /var/lib/apt/lists/*
RUN luarocks install luacrypto
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http
RUN /usr/local/openresty/luajit/bin/luarocks install luajwt
RUN /usr/local/openresty/luajit/bin/luarocks install lua-cjson
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-cookie
RUN adduser -D --shell /bin/bash --home /home/www-data www-data
WORKDIR /home/www-data
