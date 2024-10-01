# real-todo
## Requirements
1. Docker

## How to run the Project & additional Docker Commands
1. Run all services: `docker-compose up`

Additional Docker Commands:
1. Rebuild all Images (also run e.g. if you have a new dependency): `docker-compose build --no-cache`
2. Run services with rebuild: `docker-compose up -d --build api frontend postgres postgres_admin`
3. Remove all images: `docker rmi -f $(docker images -a -q)`
4. Remove all containers: `docker rm -vf $(docker ps -a -q)`
5. Remove all Volumes: `docker-compose down -v`
6. Clear all `docker system prune -a --volumes`
