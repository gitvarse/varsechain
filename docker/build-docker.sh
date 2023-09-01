#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-varsechain/varsechaind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/varsechaind docker/bin/
cp $BUILD_DIR/src/varsechain-cli docker/bin/
cp $BUILD_DIR/src/varsechain-tx docker/bin/
strip docker/bin/varsechaind
strip docker/bin/varsechain-cli
strip docker/bin/varsechain-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
