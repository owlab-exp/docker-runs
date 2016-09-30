#!/bin/sh
docker stop nexus
docker rm nexus
docker run --restart=always -d -p 8081:8081 -v $HOME/working/docker-volumes/sonatype-work:/sonatype-work --name nexus sonatype/nexus:oss
