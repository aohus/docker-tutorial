#!/bin/bash
PROJECT_PATH=$1
docker run --rm -it \
    --publish 8888:8888 \
    --volume $PROJECT_PATH:/app/src \
    --env NOTEBOOK_DIR=/app/src \
    data-flow:dev