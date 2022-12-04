#!/bin/sh

GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# check if .env file exist
if [ -f .env ]; then
    echo "${RED}The project is already initialized${RESET}"
    exit 1
fi

echo "${YELLOW}Initializing of Stargate project${RESET}"

# get project informations
echo "${YELLOW}What is your steam login for install arma3${RESET}"
read STEAM_LOGIN

echo "${YELLOW}What is your steam password for install arma3${RESET}"
read STEAM_PASSWORD

echo "${YELLOW}What is the name of this instance${RESET}"
read INSTANCE_NAME

echo "${YELLOW}What is the port of the server${RESET}"
read SERVER_PORT_START

echo "${YELLOW}What is the number of players of the server${RESET}"
read SERVER_MAX_PLAYERS

echo "${YELLOW}Creating .env file${RESET}"

# create .env file 
cp .env.example .env

# replace variables in .env file
sed -i "s/STEAM_LOGIN=.*/STEAM_LOGIN=$STEAM_LOGIN/g" .env
sed -i "s/STEAM_PASSWORD=.*/STEAM_PASSWORD=$STEAM_PASSWORD/g" .env
sed -i "s/INSTANCE_NAME=.*/INSTANCE_NAME=$INSTANCE_NAME/g" .env
sed -i "s/SERVER_MAX_PLAYERS=.*/SERVER_MAX_PLAYERS=$SERVER_MAX_PLAYERS/g" .env

SERVER_PORT_END=$(($SERVER_PORT_START + 4))

sed -i "s/SERVER_PORT_START=.*/SERVER_PORT_START=$SERVER_PORT_START/g" .env
sed -i "s/SERVER_PORT_END=.*/SERVER_PORT_END=$SERVER_PORT_END/g" .env

# generate server passwords
sed -i "s/SERVER_ADMIN_PASSWORD=.*/SERVER_ADMIN_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 30 | head -n 1)/g" .env
sed -i "s/SERVER_COMMAND_PASSWORD=.*/SERVER_COMMAND_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 30 | head -n 1)/g" .env
sed -i "s/BDD_PASSWORD=.*/BDD_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 30 | head -n 1)/g" .env
sed -i "s/BDD_ROOT_PASSWORD=.*/BDD_ROOT_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 30 | head -n 1)/g" .env

echo "${GREEN}Stargate project initialized with succes${RESET}"