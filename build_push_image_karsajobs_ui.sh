#!/bin/sh

# Build dengan nama anickme/karsajobs-ui:latest
docker build -t anickme/karsajobs-ui:latest .

# Lihat docker image lokal
docker images

# Login docker
echo $PASSWORD_DOCKER_HUB | docker login -u anickme --password-stdin

# Unggah ke Docker Hub
docker push anickme/karsajobs-ui:latest