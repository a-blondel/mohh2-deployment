# Medal of Honor: Heroes 2 - Deployment project

A docker compose project designed to automate the deployment of [Medal of Honor: Heroes 2's server](https://github.com/a-blondel/mohh2-server) and its requirements.

## How to

- Install Docker and Docker Compose on your server
- Create environment secrets matching the right environment in GitHub Actions :
  - `SERVER_IP` : Server IP, used to connect to the server and host the server
  - `SERVER_USERNAME` : The username to connect to the server
  - `SERVER_SSH_KEY` : The SSH key to connect to the server
  - `GH_USERNAME` : The username to connect to GitHub
  - `GH_TOKEN` : The token to connect to GitHub (see [here](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token))
  - `DB_USERNAME` : The username to connect to the database
  - `DB_PASSWORD` : The password to connect to the database

  There are also plain text environment variables :
  - `DB_NAME` : The database name
  - `WII_PAL_PROFILES` : The profile(s) for mohh2 wii pal server
  - `WII_PAL_LOGS` : The path to the logs for mohh2 wii pal server
- Run `deploy.sh`
