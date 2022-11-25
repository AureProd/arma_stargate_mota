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

# check if server is not already running with check if docker container is running
if [ ! "$(docker ps -q -f name=arma-$INSTANCE_NAME)" ]; then
    echo -e "${RED}Server is not running.${RESET}"
    exit 1
fi

docker logs arma-$INSTANCE_NAME -f