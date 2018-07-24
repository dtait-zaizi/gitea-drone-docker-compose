# Running Gitea SCM and Drone CI via docker-compose

Instatiate a Gitea local source code repository (similar to GitHub), and a Drrone instance via docker-compose 

## docker-clean.sh

Shell script to clenaup docker by deleting images, volumes and networks, then creates the gitea-network 
```
rm -rf data
docker system prune -a
docker volume rm $(docker volume ls -q --filter dangling=true)
docker network create gitea-network
docker-compose up
```

# Status: Not Complete
