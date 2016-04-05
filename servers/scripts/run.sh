#!/bin/sh

grep 'upstream target' /usr/local/nginx/sites-enabled/base.conf || \
	(echo "upstream target { server $TARGET:80; }" && cat /usr/local/nginx/sites-enabled/base.conf) > base.conf.new

mv base.conf.new /usr/local/nginx/sites-enabled/base.conf

/usr/local/nginx/sbin/nginx -g 'daemon off;'
