FROM openresty/openresty:1.11.2.1-trusty

MAINTAINER Saagie

RUN apt-get install libssl-dev
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http
RUN /usr/local/openresty/luajit/bin/luarocks install luajwt
RUN /usr/local/openresty/luajit/bin/luarocks install lua-cjson
