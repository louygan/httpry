FROM alpine:3.10
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    &&  echo "@edgecommunity http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
#RUN apk add --no-cache tcpdump nghttp2 curl && rm -rf /var/run/apk/*

RUN apk add --no-cache build-base libpcap-dev

WORKDIR /tmp

COPY * /tmp/

RUN mv Makefile.static Makefile; make clean; make
