#/bin/bash

# build image dari docker file pada directory
docker build -t item-app:v1 . 

# melihat seluruh image pada local
docker images

#mengubah nama image docker agar sesuai dengan format github packages
docker tag item-app:v1 ghcr.io/gungindi/item-app:v1

#login ke github packages
echo $TOKEN | docker login ghcr.io -u gungindi --password-stdin

# push ke github packages
docker push ghcr.io/gungindi/item-app:v1
