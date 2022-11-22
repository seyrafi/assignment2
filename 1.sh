#!/bin/sh

sh ./fileserver.sh && sh ./fileclient.sh;

echo "Running Client Container..."
sudo docker run -it --name=ClientContainer --mount source=clientvol,target=/clientdata --network=mynetwork1 --ip=172.168.11.43 clientimage:1.0;

echo "Running Server Container..."
sudo docker run -dit --name=ServerContainer --mount source=servervol,target=/serverdata --network=mynetwork1 --ip=172.168.11.42 serverimage:1.0;

sudo docker container start ClientContainer

sudo docker exec -it ClientContainer sh
