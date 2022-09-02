**To check if Docker is installed**
```
docker --version
```
**To build Docker custom image**
```
docker build -t <docker_hub_ID>/<custom_image_name> .

docker build -t ishahroz/simple-dockerized-node-app .
```
**To run Docker custom image**
```
docker run <docker_hub_ID>/<custom_image_name>

docker run ishahroz/simple-dockerized-node-app
```
**To run Docker custom image with port forwarding/mapping**
```
docker run -p <local_port>:<container_port> <docker_hub_ID>/<custom_image_name>

docker run -p 8080:8080 ishahroz/simple-dockerized-node-app
```
**To run Docker custom image by overriding startup command and accessing shell instead**
```
docker run -it <docker_hub_ID>/<custom_image_name> sh

docker run -it ishahroz/simple-dockerized-node-app sh
```