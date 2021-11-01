FROM haproxytech/haproxy-alpine:2.5

COPY mock-static-files/index.html /index.html

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg