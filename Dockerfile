FROM ubuntu:14.04
MAINTAINER Jared Hanson <jaredhanson@gmail.com>

RUN apt-get -qq update
RUN apt-get -qqy install build-essential
RUN apt-get -qqy install git
RUN apt-get -qqy install wget
RUN apt-get -qqy install python

RUN cd /tmp && wget http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz
RUN cd /usr/local && tar --strip-components=1 -xzf /tmp/node-v0.10.29-linux-x64.tar.gz
RUN rm /tmp/node-v0.10.29-linux-x64.tar.gz
