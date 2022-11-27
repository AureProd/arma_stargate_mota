#!/bin/sh

GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# check if script as 3 arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <OUTPUT_LINK_FOLDER> <STEAM_LOGIN> <STEAM_PASSWORD>"
    exit 1
fi

if [ ! -d $1/server ]; then
    mkdir $1/server
fi

container_id=$(docker run --rm -d --volume $1/server:/server:Z steamcmd/steamcmd:alpine sleep infinity)

echo "${YELLOW}Starting of container use for get arma3 server files (id: ${container_id})${RESET}"

docker exec -it $container_id steamcmd \
    +force_install_dir /server \
    +login $2 $3 \
    +app_update 233780 \
    +quit

docker rm -f $container_id

user=$(id -u -n)
sudo chown -R $USER:$USER $1/server

echo "${GREEN}\nArma3 server files get with succes, output folder: '$1/server'${RESET}"