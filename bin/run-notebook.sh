#!/usr/bin/env bash

docker run --init --name jupyter --rm -it --mount type=bind,source=$PWD,target=/home/jovyan/project rappdw/docker-ds:latest
