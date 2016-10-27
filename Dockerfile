FROM openresty/openresty:1.11.2.1-trusty

RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http
RUN /usr/local/openresty/luajit/bin/luarocks install luajwt
RUN /usr/local/openresty/luajit/bin/luarocks install lua-cjson
