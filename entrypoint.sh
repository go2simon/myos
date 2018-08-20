#!/bin/bash

php-fpm7.0 --daemonize --fpm-config /etc/php/7.0/fpm/php-fpm.conf
sed -i "s/CLIENT_ID/$CLIENT_ID/g" /etc/v4ray/config.json
sed -i "s/CLIENT_ALTERID/$CLIENT_ALTERID/g" /etc/v4ray/config.json
sed -i "s/CLIENT_SECURITY/$CLIENT_SECURITY/g" /etc/v4ray/config.json
v4ray -config=/etc/v4ray/config.json &
nginx -g 'daemon off;'
