#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 <name-of-image>"
    exit 1
fi

IMG_NAME="$1"

if [ $IMG_NAME = "dev-box" ]; then
    echo "Building dev-box image..."
else
    echo "Unknown image name: $IMG_NAME"
    exit 1
fi

docker build -f containers/$IMG_NAME/Dockerfile -t "$IMG_NAME":latest .
