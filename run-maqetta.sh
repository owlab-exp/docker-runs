#!/bin/sh
docker stop maqetta
docker rm maqetta
docker run --restart=always -d -p 5001:50000 -v /data/docker-volumes/maqetta-users:/maqetta/users --name maqetta owlab/maqetta
