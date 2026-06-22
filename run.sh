#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 <name-of-image>"
    exit 1
fi

IMG_NAME="$1"

docker run -d -t --name $IMG_NAME $IMG_NAME:latest
