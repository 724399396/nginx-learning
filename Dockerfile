FROM ubuntu:18.04

WORKDIR /root/

RUN apt-get update \
    && apt-get -y install wget build-essential libpcre3 libpcre3-dev zlib1g \
    zlib1g-dev libssl-dev vim-tiny \
    && wget https://nginx.org/download/nginx-1.15.3.tar.gz \
    && tar -xf nginx-1.15.3.tar.gz \
    && cd nginx-1.15.3 \ 
    && ./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module\
    && make \
    && make install

CMD ["sleep", "9999999"]