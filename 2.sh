docker rm -f ServerContainer ClientContainer
docker rmi serverimage:1.0 clientimage:1.0
echo "y" | docker network prune
echo "y" | docker volume prune
