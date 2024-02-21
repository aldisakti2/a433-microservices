#!/bin/bash

#Membuat Docker Image dari Dockerfile dengan Tag item-app:v1
docker build . -t item-app:v1

#Melihat Daftar Docker Image Local
docker image ls

#Mengubah Nama Docker Image Sesuai Format GitHub Package
docker image tag item-app:v1 ghcr.io/aldisakti2/item-app:v1

#Login ke GitHub Package
echo $PW_TOKEN | docker login ghcr.io -u aldisakti2 --password-stdin

#Push Docker Image ke GitHub Package
docker push ghcr.io/aldisakti2/item-app:v1
