#!/bin/bash

PROJECT_PATH=`pwd`"/data";
sudo npm install express --save && sudo npm install express-generator -g
express data && cd data && sudo npm install && cd ..

docker build -t debian/node .

docker run -d \
	-p 80:80 \
	-p 8080:3000 \
	-p 443:443 \
	-v $PROJECT_PATH:/data \
	debian/node npm start

# clean all
# docker rm $(docker ps -a -q)
# docker rmi $(docker images -q)