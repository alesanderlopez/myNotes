FROM debian:jessie

MAINTAINER "Alesander López Gil" <ales.sander93@gmail.com>

WORKDIR /tmp

# Basic install
RUN apt-get update
RUN apt-get install -y \
    curl wget vim make g++ libssl-dev git python

# Node install
RUN git clone https://github.com/nodejs/node.git
RUN apt-get install python -y
RUN cd node && ./configure && make && make install

# Express install

#RUN npm install express --save
#RUN npm install express-generator -g

RUN apt-get clean
RUN rm -rf /tmp/node

VOLUME ["/data"]

# PORTS
EXPOSE 80
EXPOSE 443

WORKDIR /data