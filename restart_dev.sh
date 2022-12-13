#!/bin/bash

RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
RESET="\e[0m"

echo -e "${YELLOW}Restarting server for dev...${RESET}"

# get project folder path
PROJECT_PATH=$(readlink -f $0)
PROJECT_PATH=$(echo $PROJECT_PATH | sed 's/\/[^\/]*$//')

$PROJECT_PATH/start.sh update_dev

echo -e "${GREEN}Server restarted for dev.${RESET}"

echo -e "${YELLOW}Open logs...${RESET}"

$PROJECT_PATH/show_logs.sh