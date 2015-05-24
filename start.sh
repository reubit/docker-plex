#!/bin/bash

docker run -d --name=plex --net=host \
  -v /etc/localtime:/etc/localtime:ro \
  -v /data/docker/volumes/plex-config:/config \
  -v /mnt/storage/media:/media \
  reubit/plex
