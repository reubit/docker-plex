#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/docker.conf

docker build -t $DOCKER_IMAGE $DIR
