#!/bin/bash
sudo yum install -y docker
sudo usermod -a -G docker ec2-user
sudo service docker start
docker build -t docker/project .
# docker run -t -i docker/projectd
docker run -d -p 80:80 docker/project

## Delete all docker containers
# docker rm $(docker ps -a -q)
## Delete all docker images
# docker rmi $(docker images -q)
