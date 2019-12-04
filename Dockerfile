FROM openresty/openresty:1.15.8.2-5-centos

LABEL maintainer="Saagie"

RUN yum update -y && yum install git -y && yum install gcc -y && yum install openssl -y && yum install openssl-devel -y && rm -rf /var/lib/apt/lists/*
RUN luarocks install luacrypto
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http
RUN /usr/local/openresty/luajit/bin/luarocks install luajwt
RUN /usr/local/openresty/luajit/bin/luarocks install lua-cjson
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-cookie
RUN useradd -ms /bin/bash www-data
WORKDIR /home/www-data
