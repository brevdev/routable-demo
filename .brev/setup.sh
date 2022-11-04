#!/bin/bash

##### Docker-Compose #####
(echo ""; echo "##### Installing Docker-Compose #####"; echo "";)
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

##### Node Tooling #####
(echo ""; echo "##### Installing Node Tooling #####"; echo "";)
sudo apt install ca-certificates
wget -qO- https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
