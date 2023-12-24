## Port/Domain Mappings

> Remember Docker port syntax: _External_ **:** _Internal_  
> **External**: Port exposed on host machine

| Folder  | Service(s)    | Docker Hostname | Port(s)            | Domain                   |
| ------- | ------------- | --------------- | ------------------ | ------------------------ |
| caddy   | Caddy         | `caddy`         | 80:80, 443:443     | N/A                      |
| traefik | Traefik Proxy | `traefik`       | 80:80, 443:443     | N/A                      |
| uptime  | Uptime Kuma   | `uptime`        | 3001               | uptime.orangeunilabs.com |
| auth    | Authentik     | `auth`          | 9000, 9443 (https) | auth.orangeunilabs.com   |

> [!NOTE]
> Docker hostnames are set explicitly and will _usually_ match the folder name. This is to reduce confusion with regard the the Caddyfile and how networking works in Docker.

## Updating without Downtime

**tl;dr**

```
docker compose up -d --no-deps <service>
```
