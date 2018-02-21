#!/bin/sh
set -e

# Set upstream IP in nginx config
sed -e "s/\$UPSTREAM_IP/$UPSTREAM_IP/" /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"
