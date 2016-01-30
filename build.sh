#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/docker.conf

docker build --no-cache=true -t $DOCKER_IMAGE $DIR
