#!/bin/sh
docker stop docker-registry
docker rm docker-registry
docker run --restart=always -d -p 5000:5000 -v $HOME/working/docker-volumes/docker-registry-data:/var/lib/registry --name docker-registry registry:2
