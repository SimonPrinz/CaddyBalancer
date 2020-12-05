FROM caddy:2-alpine
WORKDIR /app

LABEL org.opencontainers.image.source https://github.com/SimonPrinz/CaddyBalancer

COPY Caddyfile .
COPY generateCaddyfile.sh .

CMD ["./generateCaddyfile.sh"]
