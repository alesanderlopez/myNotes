#!/bin/bash

PROJECT_PATH=`pwd`"/data";
mkdir $PROJECT_PATH;

docker build -t debian/laravel .
docker run -d \
	-p 192.168.1.10:8080:80 \
	-v $PROJECT_PATH:/data \
	debian/laravel /opt/bin/apache-start.sh

# clean all
# docker rm $(docker ps -a -q)
# docker rmi $(docker images -q)