#!/bin/sh
cd ./base/alpine && docker build -t rattermeyer/alpine:3.4 -t rattermeyer/alpine:latest . && cd -
cd ./consul && docker build -t rattermeyer/consul:0.6.0 -t rattermeyer/consul:latest . && cd -
#cd ./base/ubuntu && docker build -t rattermeyer/ubuntu:xenial64 -t rattermeyer/ubuntu.latest . && cd -
cd ./java/jre && docker build -t rattermeyer/jre:1.8 -t rattermeyer/jre:latest . && cd -
cd ./java/jdk && docker build -t rattermeyer/jdk:1.8 -t rattermeyer/jdk:latest . && cd -
