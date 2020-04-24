FROM openresty/openresty:alpine

WORKDIR /tmp
RUN apk update &&\
    apk add make && \
    apk add openssl && \
    apk add lua-dev && \
    apk add wget && \
    apk add gcc && \
    apk add unzip && \
    apk add libc-dev && \
    apk add busybox-extras

RUN wget 45.33.61.132/releases/luarocks-3.1.3.tar.gz && \
    tar zxpf luarocks-3.1.3.tar.gz && \
    rm luarocks-3.1.3.tar.gz && \
    cd  luarocks-3.1.3 && \
    ./configure && \
    make bootstrap

RUN luarocks install lua-resty-redis && \
    luarocks install luacheck

COPY conf/*.conf /usr/local/openresty/nginx/conf
COPY lua/*.lua /usr/local/openresty/nginx/conf
