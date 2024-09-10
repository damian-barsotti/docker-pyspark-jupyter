#!/bin/sh

DIRNAME="${0%/*}"
BASENAME="${0##*/}"

NB_USER=damian

MY_UID=$(id -u)
MY_GID=$(id -g)

exec "$DIRNAME"/run.sh \
    -e NB_UID=$MY_UID \
    -e NB_GID=$MY_GID \
    -v "$DIRNAME/work:/home/$NB_USER/work" \
    --hostname localhost
