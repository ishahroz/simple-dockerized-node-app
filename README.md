# Docker
## To check if docker is installed
```
docker --version
```
## To build docker custom image
```
docker build -t <docker_hub_ID>/<custom_image_name> .

docker build -t ishahroz/simple-dockerized-node-app .
```
## To run docker custom image
```
docker run <docker_hub_ID>/<custom_image_name>

docker run ishahroz/simple-dockerized-node-app
```
## To run docker custom image with port forwarding/mapping
```
docker run -p <local_port>:<container_port> <docker_hub_ID>/<custom_image_name>

docker run -p 8080:8080 ishahroz/simple-dockerized-node-app
```
## To run docker custom image by overriding startup command and accessing shell instead
```
docker run -it <docker_hub_ID>/<custom_image_name> sh

docker run -it ishahroz/simple-dockerized-node-app sh
```
## To display all the containter (processes) running
```
docker ps
```
### Docker Restart Policies

<br />

![Docker Restart Policies](/images/docker_restart_policies.png)
# docker-compose

Docker-compose makes it very easy for networking between containers since Docker maintains its internal hostname scheme between containers. It assumes **docker-compose.yml** file exists in the project directory.
## To run containers using docker-compose
```
docker-compose up
```
## To both build run containers using docker-compose
```
docker-compose up --build
```
## To run containers using docker-compose in background
```
docker-compose up -d
```
## To stop containers using docker-compose
```
docker-compose down
```
## To display all the containter (processes) running using docker-compose
It assumes your terminal is opened in the same directory as of docker-compose.yml file.
```
docker-compose ps
```