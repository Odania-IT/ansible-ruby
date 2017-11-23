FROM ruby:2.4
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update && apt-get install -y ansible && rm -rf /var/lib/apt/lists/*
RUN useradd -d /home/daemon -s /bin/bash -u 1000 daemon
