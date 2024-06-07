#!/bin/bash

export TCP_HOST_IP=$(curl -s ifconfig.me) # your public IP address
export UDP_HOST_IP=127.0.0.1 # self-hosted by player

# GitHub Docker Registry (https://github.com/settings/tokens)
export GH_USERNAME=your_github_username
export GH_TOKEN=your_github_token

# Database
export DB_NAME=mohh2db
export DB_URL=jdbc:postgresql://postgres:5432/$DB_NAME
export DB_USERNAME=your_db_user
export DB_PASSWORD=your_db_password

# MoHH2 Server - PAL specific
export WII_PAL_PROFILES=wii-pal
export WII_PAL_LOGS=/var/log/mohh2/wii/pal
