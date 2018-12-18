#!/bin/bash

# install latest docker
curl -fsSL https://get.docker.com | sh

sudo usermod -aG docker $USER

# enable auto start
sudo systemctl start docker

sudo systemctl enable docker

# create docker swarm

sudo docker swarm init --listen-addr 127.0.0.1

# create overlay network named `swarm-net`
sudo docker network  create --driver overlay swarm-net

# create directory for storing data
sudo mkdir /data

sudo chown $USER:$USER /data


# re-login to take effect

echo 're-login to take effect'

exit