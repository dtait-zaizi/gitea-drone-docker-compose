
rm -rf data
docker system prune -a
docker volume rm $(docker volume ls -q --filter dangling=true)
docker network create gitea-network

docker-compose up

