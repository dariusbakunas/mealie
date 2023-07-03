# Production entry point for the frontend docker container
NODE_PORT="${PORT:-3001}"

# Web Server
caddy start --config /app/Caddyfile

# Start Node Application
yarn start -p "${NODE_PORT}"
