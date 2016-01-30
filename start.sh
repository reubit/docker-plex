#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/docker.conf

docker run -d --name=$DOCKER_NAME --net=host \
  -v /etc/localtime:/etc/localtime:ro \
  -v $PLEX_CONFIG:/config \
  -v $PLEX_MEDIA:/media \
  --restart=always \
  $DOCKER_IMAGE
