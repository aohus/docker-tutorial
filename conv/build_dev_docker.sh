#!/bin/bash
docker build ./ -f docker/dev.dockerfile -t data-flow:dev; #docker rmi $(docker images -f dangling=true -q)
