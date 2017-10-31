#!/bin/bash

docker run -u 1000:1000 -e HOME \
    -e DISPLAY=unix:0 -e XAUTHORITY=/tmp/xauth \
    -v $XAUTHORITY:/tmp/xauth -v $HOME:$HOME \
    -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --rm --name mxeasy docker-mobotix:1.4.1

