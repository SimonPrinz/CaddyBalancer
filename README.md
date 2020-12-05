# CaddyBalancer

A Docker image for load balancing based on Caddy

## Usage

```bash
docker run -d \
    -p 8080:80 \
    -e UPSTREAMS="http://12.34.56.78:9999,http://98.76.54.32:1111" \
    docker.pkg.github.com/simonprinz/caddybalancer/caddybalancer:latest
```
