#!/bin/sh

USERNAME=$1
dir=$2
TAGS=$3
GITHUB_SHA=$4
docker pull $USERNAME/$dir:latest \
          || docker build --no-cache --build-arg BUILDKIT_INLINE_CACHE=1 $TAGS $dir 
          docker build --cache-from $USERNAME/$dir $TAGS $dir 
          docker push $USERNAME/$dir:$GITHUB_SHA
          docker push $USERNAME/$dir:latest