#!/usr/bin/env bash

./bin/create-config.py -k ~/.ssh/id_rsa_git_repos -c ./tv-config/extract.json -m ./tv-config/mailmap

kubectl delete -f PyData.yaml
kubectl create -f PyData.yaml
sleep 30
export NODE_PORT=$(kubectl get services/team-view -o go-template='{{(index .spec.ports 0).nodePort}}')
open http://localhost:$NODE_PORT/lab