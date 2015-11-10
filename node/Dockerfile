FROM node:0.12
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install the agent installer and gulp
RUN node -v && npm -v
RUN npm install -g vsoagent-installer gulp

# Create a agent user as root access
RUN echo "vsoagent\nvsoagent\n\n\n\n\n\n\n" | adduser vsoagent
RUN su vsoagent

# Create Agents
RUN mkdir /opt/myagent
WORKDIR /opt/myagent
RUN vsoagent-installer

# Change Owner
RUN chown -R vsoagent /opt/myagent
USER vsoagent
