#!/bin/bash 
set -e

# use :ro to avoid removal by the script (default behavior in am5)
docker run \
  -v $(pwd)/data:/tmp/data:ro \
  -v $(pwd)/scripts:/tmp/scripts:ro \
  -v $(pwd)/out:/tmp/out \
  --rm \
  -ti \
  fredmoser/accessmod:latest /bin/sh -c "/tmp/scripts/run.sh"
