#!/bin/bash

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

cd "$DIRNAME"

OWNER=damian-barsotti

BASE_VER="3.4.3"
VER="$BASE_VER.1"

IMAGE=pyspark-jupyter

#EXTRA_ARGS="--no-cache"

docker build --tag $OWNER/$IMAGE:$VER -f "$DIRNAME"/dockerfiles/Dockerfile --progress plain $EXTRA_ARGS "$DIRNAME"/context
