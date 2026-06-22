#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <name-of-container>"
    exit 1
fi

CONTAINER_NAME="$1"
docker ps -a | grep "$CONTAINER_NAME" | awk '{print $1}' | xargs docker stop
docker ps -a | grep "$CONTAINER_NAME" | awk '{print $1}' | xargs docker rm
