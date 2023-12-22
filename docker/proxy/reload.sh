# !/bin/bash
# Reload the caddy container to apply changes without downtime
docker exec -w /etc/caddy caddy caddy reload