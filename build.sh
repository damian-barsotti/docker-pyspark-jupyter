#!/bin/bash

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

cd "$DIRNAME"

OWNER=damian-barsotti

BASE_VER="3.4.3"
VER="$BASE_VER.1"

IMAGE=pyspark-jupyter

docker build --tag $OWNER/$IMAGE:$VER -f "$DIRNAME"/dockerfiles/Dockerfile \
    --progress plain "$@" "$DIRNAME"/context
