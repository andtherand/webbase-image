#!/usr/bin/env docker

FROM phusion/baseimage
MAINTAINER Andy Ruck <mychiara+docker@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV TERM dumb

RUN rm /etc/timezone
COPY /files/timezone /etc/timezone

RUN locale-gen en_US.UTF-8 && \
    apt-get update && \
    usermod -u 1000 www-data && \
    apt-get install -y --no-install-recommends \
        git \
        curl  \
        zsh && \
        chsh -s $(which zsh) && \
        adduser www-data www-data --no-create-home && \
        apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
