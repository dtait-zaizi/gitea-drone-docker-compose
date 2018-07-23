 
rm -rf data || true
docker volume rm $(docker volume ls -q --filter dangling=true)
docker system prune -a
docker network create gitea-network
