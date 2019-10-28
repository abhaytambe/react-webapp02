#!/bin/bash
echo "$DOCKER_TOKEN" | docker login -u "$DOCKER_ID" --password-stdin

docker push -t atambe/react-webapp02-client ./client
docker push -t atambe/react-webapp02-nginx ./nginx
docker push -t atambe/react-webapp02-server ./server
docker push -t atambe/react-webapp02-worker ./worker
