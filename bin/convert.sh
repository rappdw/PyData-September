#!/usr/bin/env bash

docker run --init --name convert_notebook --rm -it --mount type=bind,source=$PWD,target=/home/jovyan/project --entrypoint=/bin/bash rappdw/docker-ds:latest /home/jovyan/project/bin/convert-notebook.sh

