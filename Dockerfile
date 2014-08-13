#!/bin/sh
FROM stealthly/docker-java

ENV STORM_VERSION 0.9.2-incubating
ENV STORM_RELEASE apache-storm-$STORM_VERSION
ENV STORM_URL http://apache.volia.net/incubator/storm/$STORM_RELEASE/$STORM_RELEASE.tar.gz
ENV STORM_HOME /opt/$STORM_RELEASE
ENV PATH $PATH:$STORM_HOME/bin

RUN wget -q $STORM_URL -O /tmp/$STORM_RELEASE.tar.gz
RUN tar xvzf /tmp/$STORM_RELEASE.tar.gz -C /opt

RUN apt-get install -y python python-dev python-pip python-virtualenv
