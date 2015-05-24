#!/bin/bash

docker ps -a | grep 'plex' | awk '{ print $1 }' | xargs docker rm
