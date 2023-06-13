# wg-dc

Example of how to use docker compose and wireguard together to get certain container to communicate with a Wireguard VPN directly

# Setup

1. Copy a wg0.conf file (for a client) to the `config/` directory
2. Run `docker compose up -d`
3. Have other container use the `container:wireguard` network whenever you want it to use the tunnel

# Automated test

1. After copying the config into the container, run `./start.sh` to start the tunnel
2. This waits for it to be ready, then test access from different places

