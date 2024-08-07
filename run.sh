#!/bin/sh

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

OWNER=damian-barsotti

BASE_VER="3.4.3"
VER="$BASE_VER.1"

IMAGE=pyspark-jupyter

exec docker run -it --rm -p 8888:8888 \
    $OWNER/$IMAGE:$VER #start.sh

