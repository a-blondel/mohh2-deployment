#!/bin/bash

# Execute the set_env_vars.sh script
source scripts/set_env_vars.sh

# Generate dnsmasq.conf with host public IP address
cat << EOF > dns-server/dnsmasq.conf
address=/wiimoh08.ea.com/$HOST_IP
address=/pspmoh08.ea.com/$HOST_IP
address=/naswii.nintendowifi.net/$HOST_IP
EOF

# Login to GitHub Docker Registry with a token (generate your token here : https://github.com/settings/tokens)
echo $TOKEN | docker login ghcr.io -u USERNAME --password-stdin

# Run Docker Compose
docker-compose up --build
