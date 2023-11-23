# auth

this is the config for the auth server I've chosen - authentik.

# Environment Variables

required environment variables to get started can be found in the `.env.example` template file. rename/copy this to `.env` for it to get picked up by docker.

```sh
# An easy way to start quick
echo "PG_PASS=$(openssl rand -base64 36)" >> .env
echo "AUTHENTIK_SECRET_KEY=$(openssl rand -base64 36)" >> .env
```
