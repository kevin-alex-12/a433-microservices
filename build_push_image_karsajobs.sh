#!/bin/sh

# Build dengan nama anickme/karsajobs:latest
docker build -t anickme/karsajobs:latest .

# Lihat docker image lokal
docker images

# Login docker
echo $PASSWORD_DOCKER_HUB | docker login -u anickme --password-stdin

# Unggah ke Docker Hub
docker push anickme/karsajobs:latest
