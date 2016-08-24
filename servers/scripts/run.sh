#!/bin/sh

grep 'TARGET:80' /usr/local/nginx/sites-enabled/base.conf && \
    sed -i "s/TARGET:80/$TARGET:80/g" /usr/local/nginx/sites-enabled/base.conf

/usr/local/nginx/sbin/nginx -g 'daemon off;'
