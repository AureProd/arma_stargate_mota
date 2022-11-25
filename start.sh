#!/bin/bash

RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
RESET="\e[0m"

# get project folder path
PROJECT_PATH=$(readlink -f $0)
PROJECT_PATH=$(echo $PROJECT_PATH | sed 's/\/[^\/]*$//')

if [ ! -f $PROJECT_PATH/.env ]; then
    echo -e "${RED}No .env file found. Please create one.${RESET}"
    exit 1
else
    INSTANCE_NAME=$(grep "INSTANCE_NAME" .env | cut -d '=' -f2)
fi

# check if server is already running with check if docker container is running
if [ "$(docker ps -q -f name=arma-$INSTANCE_NAME)" ]; then
    echo -e "${RED}Server is already running.${RESET}"
    
    # stop server
    echo -e "${YELLOW}Stopping server...${RESET}"
    $PROJECT_PATH/stop.sh
fi

# check if user want to update files
if [ -d $PROJECT_PATH/build/server ]; then
    if [[ " $@ " =~ " no_update " ]]; then
        echo -e "${YELLOW}Files are not updated${RESET}"
    else
        echo -e "${YELLOW}Do you want update files ? [y/n]${RESET}"
        read NEED_UPDATE_INPUT

        if [ "$NEED_UPDATE_INPUT" != "y" ] && [ "$NEED_UPDATE_INPUT" != "n" ] && [ "$NEED_UPDATE_INPUT" != "Y" ] && [ "$NEED_UPDATE_INPUT" != "N" ]; then
            echo -e "${RED}Invalid answer, please use 'y' or 'n'${RESET}"
            exit 1
        fi

        if [ "$NEED_UPDATE_INPUT" == "y" ] || [ "$NEED_UPDATE_INPUT" == "Y" ]; then
            echo -e "${YELLOW}Update files...${RESET}"

            $PROJECT_PATH/scripts/run.sh
        fi
    fi
else 
    echo -e "${YELLOW}Create files...${RESET}"

    $PROJECT_PATH/scripts/run.sh
fi

echo -e "${YELLOW}Start arma3 server of instance : '$INSTANCE_NAME'${RESET}"

docker-compose --project-name $INSTANCE_NAME -f $PROJECT_PATH/docker-compose.yml --env-file $PROJECT_PATH/.env up --build -d

echo -e "${GREEN}Arma3 server of instance : '$INSTANCE_NAME' started with succes${RESET}"