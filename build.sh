#!/bin/bash

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

cd "$DIRNAME"

OWNER=damian-barsotti

VER=":v3.4.1.1"

IMAGE=docker-pyspark-jupyter

docker build --no-cache --tag $OWNER/$IMAGE$VER -f "$DIRNAME"/dockerfiles/Dockerfile "$DIRNAME"/context
