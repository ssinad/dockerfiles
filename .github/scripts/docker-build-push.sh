#!/usr/bin/env bash

set -x
USERNAME=$1
dir=$2
GITHUB_SHA=$3
TAGS="-t $USERNAME/$dir:$GITHUB_SHA -t $USERNAME/$dir:latest"
    docker pull $USERNAME/$dir:latest \
||  docker build --no-cache --build-arg BUILDKIT_INLINE_CACHE=1 $TAGS $dir 
    docker build --cache-from $USERNAME/$dir $TAGS $dir 
    docker push $USERNAME/$dir:$GITHUB_SHA
    docker push $USERNAME/$dir:latest