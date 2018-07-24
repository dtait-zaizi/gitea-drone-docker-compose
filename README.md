# gitea-drone-docker-compose
Instatiate a Gitea local source code repository (similar to GitHub), and a Drrone instance via docker-compose 

#docker-clean.sh
Shell script to clenaup docker by deleting images, volumes and networks
rm -rf data
docker system prune -a
docker volume rm $(docker volume ls -q --filter dangling=true)
docker network create gitea-network

docker-compose up
