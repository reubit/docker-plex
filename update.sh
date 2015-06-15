#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source $DIR/docker.conf

$DIR/build.sh
$DIR/remove.sh
$DIR/start.sh | xargs docker logs -f
