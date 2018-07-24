# Running Gitea SCM and Drone CI via docker-compose

Instatiate a Gitea local source code repository (similar to GitHub), and a Drrone instance via docker-compose 
The Portainer management UI is also instatiated with the compose file. 

## docker-clean.sh

Shell script to clenaup docker by deleting images, volumes and networks, then creates the gitea-network 
```
rm -rf data
docker system prune -a
docker volume rm $(docker volume ls -q --filter dangling=true)
docker network create gitea-network

docker-compose up
```
# Gitea
  http://localhost:8380 

# Drone 
  http://localhost:8381

# Portainer 
  http://localhost:9910


# Status: Not Complete
