#!/bin/bash

RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
RESET="\e[0m"

if [ ! -f .env ]; then
    echo -e "${RED}No .env file found. Please create one.${RESET}"
    exit 1
else
    INSTANCE_NAME=$(grep "INSTANCE_NAME" .env | cut -d '=' -f2)
fi

echo -e "${YELLOW}Stop arma3 server of instance : '$INSTANCE_NAME'${RESET}"

# get project folder path
PROJECT_PATH=$(readlink -f $0)
PROJECT_PATH=$(echo $PROJECT_PATH | sed 's/\/[^\/]*$//')

docker-compose --project-name $INSTANCE_NAME -f $PROJECT_PATH/docker-compose.yml --env-file $PROJECT_PATH/.env down

echo -e "${GREEN}Arma3 server of instance : '$INSTANCE_NAME' stopped with succes${RESET}"