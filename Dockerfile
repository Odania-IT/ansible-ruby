FROM ruby:2.4
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN apt-get update && apt-get install -y ansible && rm -rf /var/lib/apt/lists/*
