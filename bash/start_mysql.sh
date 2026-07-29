#!/bin/sh
set -e
docker run -d \
  --name mysql-migrate-tmp \
  --rm \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  -e MYSQL_DATABASE=test \
  -p 3306:3306 \
  mysql:8
