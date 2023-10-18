#!/usr/bin/env bash

docker build --progress=plain . -t gh-974-xeron

docker run -it \
  --mount type=bind,src="./unit/config/",dst=/docker-entrypoint.d/ \
  -p 8080:8080 gh-974-xeron
