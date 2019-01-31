#!/bin/bash
echo "Start new docker container"
set -x
DOCKER_COUNTER=$((DOCKER_COUNTER+1))
#docker info
#docker run -v /var/run/docker.sock:/var/run/docker.sock docker-recrusive-test
docker run -v /var/run/docker.sock:/var/run/docker.sock --name=child-${DOCKER_COUNTER} --env DOCKER_COUNTER=${DOCKER_COUNTER} docker-recrusive-test