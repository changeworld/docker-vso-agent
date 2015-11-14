FROM ubuntu
MAINTAINER Takashi Takebayashi <changesworlds@gmail.com>

# Install packages for building ruby, npm, nodejs
RUN apt-get update
RUN apt-get install -y --force-yes build-essential curl git zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev nodejs npm

# Rename nodojs to node
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# Update npm
RUN npm install npm -g

# Install rbenv and ruby-build
RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build
RUN ./root/.rbenv/plugins/ruby-build/install.sh
ENV PATH /root/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh # or /etc/profile
# Change Mode
RUN chmod -R 755 /root/.rbenv/bin

# Install multiple versions of ruby
ENV CONFIGURE_OPTS --disable-install-doc
ADD ./ruby-versions.txt /root/ruby-versions.txt
RUN xargs -L 1 rbenv install < /root/ruby-versions.txt

# Install Bundler for each version of ruby
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN bash -l -c 'for v in $(cat /root/ruby-versions.txt); do rbenv global $v; gem install bundler; done'

# Install the agent installer
RUN npm install -g vsoagent-installer

# Create Agents
RUN mkdir /opt/myagent
WORKDIR /opt/myagent
RUN vsoagent-installer

ENTRYPOINT /bin/bash
