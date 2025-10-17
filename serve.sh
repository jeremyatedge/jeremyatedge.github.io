#!/bin/bash

# 使用 Docker 运行 Jekyll
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish 4000:4000 \
  jekyll/jekyll:4.2.2 \
  jekyll serve --watch --force_polling --incremental
