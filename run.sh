#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 <name-of-image>"
    exit 1
fi

IMG_NAME="$1"

docker run -d --restart unless-stopped -t --name $IMG_NAME -v $(pwd)/certs/:/opt/certs/ -v $(pwd)/scripts:/home/brian/scripts $IMG_NAME:latest
