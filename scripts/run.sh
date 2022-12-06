#!/bin/bash

RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
RESET="\e[0m"

echo -e "${YELLOW}Creating arma3 server of instance : '$INSTANCE_NAME'${RESET}"

# get project folder path
PROJECT_PATH=$(readlink -f $0)
PROJECT_PATH=$(echo $PROJECT_PATH | sed 's/\/[^\/]*$//')
PROJECT_PATH=$(echo $PROJECT_PATH | sed 's/\/[^\/]*$//')

# if PROJECT_PATH contain a space 
if [[ $PROJECT_PATH = *" "* ]]; then
    echo -e "${RED}The project path contain a space. Please move the project in a path without space.${RESET}"
    exit 1
fi

# get parent folder path
PARENT_PATH=$(echo $PROJECT_PATH | sed 's/\/[^\/]*$//')

# get server folder path
SERVER_PATH=$PROJECT_PATH/build

# create folder if not exist
if [ ! -d $SERVER_PATH ]; then
    # create folder with space in path
    mkdir -p $SERVER_PATH
fi

if [ ! -f $PROJECT_PATH/.env ]; then
    echo -e "${RED}No .env file found. Please create one.${RESET}"
    exit 1
else
    STEAM_LOGIN=$(grep "STEAM_LOGIN" .env | cut -d '=' -f2)
    STEAM_PASSWORD=$(grep "STEAM_PASSWORD" .env | cut -d '=' -f2)
    INSTANCE_NAME=$(grep "INSTANCE_NAME" .env | cut -d '=' -f2)
    SERVER_PORT_START=$(grep "SERVER_PORT_START" .env | cut -d '=' -f2)
    SERVER_MAX_PLAYERS=$(grep "SERVER_MAX_PLAYERS" .env | cut -d '=' -f2)
    SERVER_DESCRIPTION=$(grep "SERVER_DESCRIPTION" .env | cut -d '=' -f2)
    SERVER_ADMIN_PASSWORD=$(grep "SERVER_ADMIN_PASSWORD" .env | cut -d '=' -f2)
    SERVER_COMMAND_PASSWORD=$(grep "SERVER_COMMAND_PASSWORD" .env | cut -d '=' -f2)
    SERVER_MOTD_LIST=$(grep "SERVER_MOTD_LIST" .env | cut -d '=' -f2)
    BDD_USERNAME=$(grep "BDD_USERNAME" .env | cut -d '=' -f2)
    BDD_PASSWORD=$(grep "BDD_PASSWORD" .env | cut -d '=' -f2)
    BDD_DATABASE=$(grep "BDD_DATABASE" .env | cut -d '=' -f2)
fi

if [ -d $SERVER_PATH/mods ]; then
    NEED_MODS_UPDATE=false

    # check if arguments contains update_mods
    if [[ " $@ " =~ " update_mods " ]]; then
        NEED_MODS_UPDATE=true
    elif [[ " $@ " =~ " no_update_server " ]]; then
        NEED_SERVER_UPDATE=false
    else 
        echo -e "${YELLOW}Do you want update mods ? [y/n]${RESET}"
        read NEED_MODS_UPDATE_INPUT

        if [ "$NEED_MODS_UPDATE_INPUT" != "y" ] && [ "$NEED_MODS_UPDATE_INPUT" != "n" ] && [ "$NEED_MODS_UPDATE_INPUT" != "Y" ] && [ "$NEED_MODS_UPDATE_INPUT" != "N" ]; then
            echo -e "${RED}Invalid answer, please use 'y' or 'n'${RESET}"
            exit 1
        fi

        if [ "$NEED_MODS_UPDATE_INPUT" == "y" ] || [ "$NEED_MODS_UPDATE_INPUT" == "Y" ]; then
            NEED_MODS_UPDATE=true
        fi
    fi

    if [ "$NEED_MODS_UPDATE" == true ]; then
        echo -e "${YELLOW}Importing mods from steam workshop${RESET}"

        # import mods from steamcmd
        $PROJECT_PATH/scripts/import_mods.sh $SERVER_PATH $STEAM_LOGIN $STEAM_PASSWORD
    fi
else 
    echo -e "${YELLOW}Importing mods from steam workshop${RESET}"

    # import mods from steamcmd
    $PROJECT_PATH/scripts/import_mods.sh $SERVER_PATH $STEAM_LOGIN $STEAM_PASSWORD
fi

if [ -d $SERVER_PATH/server ]; then
    NEED_SERVER_UPDATE=false

    # check if arguments contains update_server
    if [[ " $@ " =~ " update_server " ]]; then
        NEED_SERVER_UPDATE=true
    elif [[ " $@ " =~ " no_update_server " ]]; then
        NEED_SERVER_UPDATE=false
    else 
        echo -e "${YELLOW}Do you want update server ? [y/n]${RESET}"
        read NEED_SERVER_UPDATE_INPUT

        if [ "$NEED_SERVER_UPDATE_INPUT" != "y" ] && [ "$NEED_SERVER_UPDATE_INPUT" != "n" ] && [ "$NEED_SERVER_UPDATE_INPUT" != "Y" ] && [ "$NEED_SERVER_UPDATE_INPUT" != "N" ]; then
            echo -e "${RED}Invalid answer, please use 'y' or 'n'${RESET}"
            exit 1
        fi

        if [ "$NEED_SERVER_UPDATE_INPUT" == "y" ] || [ "$NEED_SERVER_UPDATE_INPUT" == "Y" ]; then
            NEED_SERVER_UPDATE=true
        fi
    fi

    if [ "$NEED_SERVER_UPDATE" == true ]; then
        echo -e "${YELLOW}Importing server files from steam${RESET}"

        # import server from steamcmd
        $PROJECT_PATH/scripts/import_server.sh $SERVER_PATH $STEAM_LOGIN $STEAM_PASSWORD
    fi
else 
    echo -e "${YELLOW}Importing server files from steam${RESET}"

    # import server from steamcmd
    $PROJECT_PATH/scripts/import_server.sh $SERVER_PATH $STEAM_LOGIN $STEAM_PASSWORD
fi

echo -e "${YELLOW}Copying mods in server folder${RESET}"

# copy mods to server
rm -rf $SERVER_PATH/server/@cba_a3
rm -rf $SERVER_PATH/server/@map_stargate_impact
rm -rf $SERVER_PATH/server/@stargate_arma_ta
rm -rf $SERVER_PATH/server/@stargate_mota
rm -rf $SERVER_PATH/server/@mods_stargate_impact

cp -r $SERVER_PATH/mods/450814997 $SERVER_PATH/server/@cba_a3
cp -r $SERVER_PATH/mods/2128300311 $SERVER_PATH/server/@map_stargate_impact 
cp -r $SERVER_PATH/mods/2129566387 $SERVER_PATH/server/@stargate_arma_ta
cp -r $SERVER_PATH/mods/2322349802 $SERVER_PATH/server/@stargate_mota
cp -r $SERVER_PATH/mods/2411185300 $SERVER_PATH/server/@mods_stargate_impact

# debug mods for linux
mv $SERVER_PATH/server/@map_stargate_impact/Addons $SERVER_PATH/server/@map_stargate_impact/addons
mv $SERVER_PATH/server/@map_stargate_impact/Keys $SERVER_PATH/server/@map_stargate_impact/keys

mv $SERVER_PATH/server/@mods_stargate_impact/Addons $SERVER_PATH/server/@mods_stargate_impact/addons
mv $SERVER_PATH/server/@mods_stargate_impact/Keys $SERVER_PATH/server/@mods_stargate_impact/keys
mv $SERVER_PATH/server/@mods_stargate_impact/addons/SGI_Structure.pbo $SERVER_PATH/server/@mods_stargate_impact/addons/sgi_structure.pbo
mv $SERVER_PATH/server/@mods_stargate_impact/addons/SGI_Structure.pbo.TA_mysterfreez.bisign $SERVER_PATH/server/@mods_stargate_impact/addons/sgi_structure.pbo.TA_mysterfreez.bisign

# copy mods keys to server
# remove all keys except one 'a3.bikey'
mkdir $SERVER_PATH/tmp
mv $SERVER_PATH/server/keys/a3.bikey $SERVER_PATH/tmp/a3.bikey

rm -rf $SERVER_PATH/server/keys/*

mv $SERVER_PATH/tmp/a3.bikey $SERVER_PATH/server/keys/a3.bikey
rm -rf $SERVER_PATH/tmp

cp $SERVER_PATH/server/@cba_a3/keys/* $SERVER_PATH/server/keys/
cp $SERVER_PATH/server/@map_stargate_impact/keys/* $SERVER_PATH/server/keys/
cp $SERVER_PATH/server/@stargate_arma_ta/keys/* $SERVER_PATH/server/keys/
cp $SERVER_PATH/server/@stargate_mota/keys/* $SERVER_PATH/server/keys/
cp $SERVER_PATH/server/@mods_stargate_impact/keys/* $SERVER_PATH/server/keys/

# check if docker image depbo:latest exist
if [ -z "$(docker images -q depbo:latest 2> /dev/null)" ]; then
    echo -e "${RED}Docker image of 'depbo' not found, I build it${RESET}"
    
    # build docker image depbo:latest
    cd $PARENT_PATH

    git clone https://github.com/HuetJB/linux_depbo_tools.git depbo

    cd depbo

    ./setup.sh

    cd $PROJECT_PATH

    echo -e "${GREEN}Docker image of 'depbo' build with success${RESET}"
fi

echo -e "${YELLOW}Copying mission files in server folder${RESET}"

# copy server mods to server
rm -rf $SERVER_PATH/server/@extDB3
cp -r $PROJECT_PATH/@extDB3 $SERVER_PATH/server/@extDB3
mkdir $SERVER_PATH/server/@extDB3/logs

sed -i "s/<BDD_URL>/mysql-$INSTANCE_NAME/g" $SERVER_PATH/server/@extDB3/extdb3-conf.ini
sed -i "s/<BDD_PORT>/3306/g" $SERVER_PATH/server/@extDB3/extdb3-conf.ini
sed -i "s/<BDD_USERNAME>/$BDD_USERNAME/g" $SERVER_PATH/server/@extDB3/extdb3-conf.ini
sed -i "s/<BDD_PASSWORD>/$BDD_PASSWORD/g" $SERVER_PATH/server/@extDB3/extdb3-conf.ini
sed -i "s/<BDD_DATABASE>/$BDD_DATABASE/g" $SERVER_PATH/server/@extDB3/extdb3-conf.ini

rm -rf $SERVER_PATH/server/@mod_server
cp -r $PROJECT_PATH/@mod_server $SERVER_PATH/server/@mod_server
rm -rf $SERVER_PATH/server/@mod_server/addons/*

cp $PROJECT_PATH/autre/server.cfg $SERVER_PATH/server/server.cfg

# replace informations in server.cfg
sed -i "s/<SERVER_DESCRIPTION>/$SERVER_DESCRIPTION/g" $SERVER_PATH/server/server.cfg
sed -i "s/<SERVER_ADMIN_PASSWORD>/$SERVER_ADMIN_PASSWORD/g" $SERVER_PATH/server/server.cfg
sed -i "s/<SERVER_COMMAND_PASSWORD>/$SERVER_COMMAND_PASSWORD/g" $SERVER_PATH/server/server.cfg
sed -i "s/<SERVER_MAX_PLAYERS>/$SERVER_MAX_PLAYERS/g" $SERVER_PATH/server/server.cfg

# managing of motds
# get $SERVER_MOTD_LIST and get list by split it by '§'
IFS='§' read -ra MOTD_LIST <<< "$SERVER_MOTD_LIST"
# create string from list
MOTD_STRING=""
for i in "${MOTD_LIST[@]}"; do
    if [ -z "$MOTD_STRING" ]; then
        MOTD_STRING="\"$i\""
    else
        MOTD_STRING="$MOTD_STRING,\"$i\""
    fi
done
# replace informations in server.cfg
sed -i "s/<SERVER_MOTD_LIST>/$MOTD_STRING/g" $SERVER_PATH/server/server.cfg

echo -e "${YELLOW}Compiling mission files in server folder${RESET}"

rm -rf $SERVER_PATH/server/@mod_server/addons/*
rm -rf $SERVER_PATH/server/mpmissions/*

# import binarized files
container_id=$(docker run --rm -d --workdir /app depbo:latest sleep infinity)

echo -e "${YELLOW}Starting of container for create all pbo (id: ${container_id})${RESET}"

docker cp $PROJECT_PATH/@mod_server/addons/mod_server $container_id:/app/mod_server
docker cp $PROJECT_PATH/mission.Stargate_Impact_Map $container_id:/app/mission.Stargate_Impact_Map

docker exec -it $container_id makepbo -N mod_server
docker exec -it $container_id makepbo -N mission.Stargate_Impact_Map

docker cp $container_id:/app/mod_server.pbo $SERVER_PATH/server/@mod_server/addons/mod_server.pbo
docker cp $container_id:/app/mission.Stargate_Impact_Map.pbo $SERVER_PATH/server/mpmissions/mission.Stargate_Impact_Map.pbo

docker rm -f $container_id

echo -e "${GREEN}All pbo create with success ${RESET}"

echo -e "${YELLOW}Create starting script${RESET}"

# create server starter script
rm -rf $SERVER_PATH/server/run.sh

echo -e "./arma3server_x64 -port=$SERVER_PORT_START -autoinit -config=server.cfg -name=$INSTANCE_NAME -mod=@cba_a3\;@map_stargate_impact\;@stargate_arma_ta\;@stargate_mota\;@mods_stargate_impact -servermod=@mod_server\;@extDB3" > $SERVER_PATH/server/run.sh

chmod +x $SERVER_PATH/server/run.sh

echo -e "${GREEN}Creating of arma3 server of instance '${INSTANCE_NAME}' with success${RESET}"