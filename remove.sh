#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/docker.conf

docker ps -a | grep $DOCKER_NAME && (docker stop $DOCKER_NAME || docker kill $DOCKER_NAME) && docker rm -f $DOCKER_NAME

sudo rm $PLEX_CONFIG/Plex\ Media\ Server/plexmediaserver.pid
