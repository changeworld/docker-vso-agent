FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install packages for JDK, scala, npm, nodejs
RUN apt-get update
RUN apt-get install -y --force-yes curl git wget default-jdk scala nodejs npm

# Rename nodojs to node
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# Update npm
RUN npm install npm -g

# Install sbt
RUN wget https://dl.bintray.com/sbt/debian/sbt-0.13.9.deb
RUN apt-get update
RUN dpkg -i sbt-0.13.9.deb
RUN sbt
