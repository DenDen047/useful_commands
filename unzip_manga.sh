#!/bin/bash

IMAGE_NAME="denden047/useful_commands:latest"
MAIN_DIR=${PWD}/unzip_manga
COMMAND="python main.py"

cd docker && \
docker image build \
    --rm \
    -t ${IMAGE_NAME} .

docker container run \
    --rm \
    -v ${MAIN_DIR}:/workdir \
    -w=/workdir \
    ${IMAGE_NAME} \
    ${COMMAND}