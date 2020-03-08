#!/bin/bash

IMAGE_NAME="denden047/useful_commands:latest"
COMMAND="python main.py"

cd docker && \
docker image build \
    --rm \
    -t ${IMAGE_NAME} .

docker container run \
    --rm \
    --name bb \
    -w="unzip_manga" \
    ${IMAGE_NAME} \
    ${COMMAND}