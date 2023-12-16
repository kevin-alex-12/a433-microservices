#!/bin/sh

# Build dengan nama item-app:v1
docker build -t item-app:v1 .

# Lihat docker image lokal
docker images

# Ubah nama image dengan nama repository Docker Hub
docker tag item-app:v1 anickme/item-app:v1

# Login docker
echo $PASSWORD_DOCKER_HUB | docker login -u anickme --password-stdin

# Unggah ke Docker Hub
docker push anickme/item-app:v1