#! /bin/bash

docker ps | grep $IMAGE | awk '{print $1}' | xargs docker stop
docker pull $IMAGE
docker run -d $IMAGE

