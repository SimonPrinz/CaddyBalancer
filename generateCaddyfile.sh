#!/bin/sh

# generate Caddyfile
hosts=`echo "$UPSTREAMS" | sed "s|,|\\\\\\n\\t\\tto |"`
sed -i "s|HOSTS|$hosts|" Caddyfile
cat Caddyfile

# run caddy
caddy run --config /app/Caddyfile --adapter caddyfile
