#!/bin/sh

echo "Creating an user-defined bridge network...";
sudo docker network create --driver bridge mynetwork1 --subnet="172.168.11.40/29";
echo "Network created successfully...";

echo "Creating a volume for server...";
sudo docker volume create servervol;
echo "Volume for server gets created successfully...";

sudo docker build -t serverimage:1.0 ./server/.;
sudo docker run -dit --name=ServerContainer --mount source=servervol,target=/serverdata --network=mynetwork1 --ip=172.168.11.42 serverimage:1.0 /bin/sh;
sh fileclient.sh
