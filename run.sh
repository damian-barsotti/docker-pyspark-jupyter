#!/bin/bash

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

OWNER=damian-barsotti

BASE_VER="3.4.3"
VER="$BASE_VER.1"

IMAGE=pyspark-jupyter

SPARK_PORT=4040
while true &>/dev/null </dev/tcp/127.0.0.1/$SPARK_PORT
do
    SPARK_PORT=$[$SPARK_PORT+1]
done

exec docker run -it --rm  "$@" \
    -p 8888:8888 \
    -p $SPARK_PORT:4040 \
    $OWNER/$IMAGE:$VER

