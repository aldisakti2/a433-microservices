#!/bin/bash

#Membuat Docker Image dari Dockerfile dengan Tag karsajobs:latest
docker build . -t karsajobs:latest

#Melihat Daftar Docker Image Local
docker image ls

#Mengubah Nama Docker Image Sesuai Format GitHub Package
docker image tag karsajobs:latest ghcr.io/aldisakti2/karsajobs:latest

#Login ke GitHub Package
echo $PW_TOKEN | docker login ghcr.io -u aldisakti2 --password-stdin

#Push Docker Image ke GitHub Package
docker push ghcr.io/aldisakti2/karsajobs:latest
