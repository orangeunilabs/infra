# !/bin/bash
# 1st positional arg is the path to the Caddyfile
sudo cp $1 /etc/caddy/Caddyfile
sudo systemctl restart caddy