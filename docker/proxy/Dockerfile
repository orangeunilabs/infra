# Builds a custom Caddy image with Cloudflare DNS plugin
# Available publicly at ghcr.io/orangeunilabs/caddy:latest

ARG VERSION=2.7

FROM caddy:${VERSION}-builder-alpine AS builder
LABEL org.opencontainers.image.source="https://github.com/orangeunilabs/infra"

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:${VERSION}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
