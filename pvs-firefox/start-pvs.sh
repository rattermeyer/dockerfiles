#!/bin/env bash
docker build -t pvs-firefox .
docker run -ti --rm  -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix pvs-firefox
