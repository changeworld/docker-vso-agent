FROM node
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install the agent installer and gulp
RUN npm install -g vsoagent-installer gulp

# Create Agents
RUN mkdir /opt/myagent
WORKDIR /opt/myagent
RUN vsoagent-installer
