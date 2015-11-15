FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install packages for JDK, scala, npm, nodejs
RUN apt-get update
RUN apt-get install -y --force-yes curl git default-jdk scala nodejs npm

# Rename nodojs to node
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# Update npm
RUN npm install npm -g
