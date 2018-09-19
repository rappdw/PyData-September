#!/usr/bin/env bash

cd /home/jovyan/project/notebooks
su jovyan -c 'jupyter nbconvert PyData*.ipynb --to slides'