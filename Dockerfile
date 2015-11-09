#!/usr/bin/env docker

FROM mychiara/base
MAINTAINER Andy Ruck <mychiara+docker@gmail.com>


RUN apt-get update && \
        usermod -u 1000 www-data && \
        adduser www-data www-data --no-create-home && \
        apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
