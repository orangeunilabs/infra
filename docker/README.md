## Port/Domain Mappings

> Remember Docker port syntax: _External_ **:** _Internal_  
> **External**: Port exposed on host machine

| Folder | Service(s)  | Port(s)        | Domain                   |
| ------ | ----------- | -------------- | ------------------------ |
| proxy  | Caddy       | 80:80, 443:443 | N/A                      |
| status | Uptime Kuma | 3001           | uptime.orangeunilabs.com |

## Updating without Downtime

**tl;dr**

```
docker compose up -d --no-deps <service>
```
