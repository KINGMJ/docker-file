#!/bin/sh
# 开启一个 pgAdmin 服务，访问 http://localhost:5050
# 文档: https://hub.docker.com/r/dpage/pgadmin4/
docker run -d \
  --name pgadmin \
  --rm \
  -e PGADMIN_DEFAULT_EMAIL=admin@example.com \
  -e PGADMIN_DEFAULT_PASSWORD=123456 \
  -p 5050:80 \
  dpage/pgadmin4
