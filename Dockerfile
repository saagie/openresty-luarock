FROM openresty/openresty:1.11.2.1-trusty

MAINTAINER Saagie

RUN apt-get install -y libssl-dev
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http
RUN /usr/local/openresty/luajit/bin/luarocks install luajwt
RUN /usr/local/openresty/luajit/bin/luarocks install lua-cjson
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-cookie