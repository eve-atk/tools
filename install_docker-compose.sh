#!/bin/bash -eu

# docker-composeのver

compose=$1

echo -e "\e[32;1mInstall docker-compose ver:$compose\e[m"

sudo curl -L https://github.com/docker/compose/releases/download/${compose}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod 0755 /usr/local/bin/docker-compose

echo -e "\e[32;1mFinish!\e[m"

docker-compose -v
