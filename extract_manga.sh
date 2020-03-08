#!/bin/bash

IMAGE_NAME="denden047/useful_commands:latest"

cd docker && \
docker image build \
    --rm \
    -t ${IMAGE_NAME} .

docker container run \
    --rm \
    --name bb \
    ${IMAGE_NAME}