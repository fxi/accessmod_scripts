#!/bin/bash 
set -e

docker run \
  -v $(pwd)/data:/tmp/data \
  -v $(pwd)/scripts:/tmp/scripts \
  -v $(pwd)/out:/tmp/out \
  --rm \
  -ti \
  fredmoser/accessmod:latest /bin/sh -c "/tmp/scripts/run.sh"
