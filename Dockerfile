FROM caddy:2-alpine
WORKDIR /app

COPY Caddyfile .
COPY generateCaddyfile.sh .

CMD ["./generateCaddyfile.sh"]
