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

if [ ! -d $1/mods ]; then
    mkdir $1/mods
fi

container_id=$(docker run --rm -d --volume $1/mods:/mods/steamapps/workshop/content/107410:Z steamcmd/steamcmd:alpine sleep infinity)

echo "${YELLOW}Starting of container use for get arma3 mod (id: ${container_id})${RESET}"

docker exec -it $container_id steamcmd \
    +force_install_dir /mods \
    +login $2 $3 \
    +workshop_download_item 107410 450814997 validate \
    +workshop_download_item 107410 2128300311 validate \
    +workshop_download_item 107410 2129566387 validate \
    +workshop_download_item 107410 2322349802 validate \
    +workshop_download_item 107410 2411185300 validate \
    +quit

docker rm -f $container_id

sudo chown -R $USER:$USER $1/mods

echo "${GREEN}\nArma3 mod get with succes, output folder: '$1/mods'${RESET}"