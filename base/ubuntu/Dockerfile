FROM ubuntu:xenial

MAINTAINER Richard Attermeyer <richard.attermeyer@gmail.com>


# Install latest security patches
RUN rm -rf /var/lib/apt/lists/* && \
    apt-get -y clean && \
    apt-get -y update && \
    apt-get -y install \
            wget \
            curl \
            apt-transport-https \
            unattended-upgrades && \
    unattended-upgrade -v && \
    apt-get clean && \
    apt-get -y autoclean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
