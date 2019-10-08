#!/bin/bash -eu

echo -e "\e[32;1mUpdate Repository\e[m"
sudo -S apt update

sudo -S apt install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common

sudo -S curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo -S add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
sudo -S apt update

echo -e "\e[32;1mStart Docker Installation\e[m"
sudo apt install -y docker-ce

echo -e "\e[32;1mConfigure Docker to work without sudo\e[m"
sudo -S gpasswd -a `whoami` docker

sudo -S chmod 666 /var/run/docker.sock
