#!/bin/sh
# 官方 mysql 镜像自带 mysqldump / mysql 客户端，示例：docker exec mysql mysqldump -uroot -p --all-databases
# Apple Silicon 若拉取失败可取消下行注释：--platform linux/amd64
docker run -d --rm --name mysql \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -p 3306:3306 \
  mysql:8.0 \
  --default-authentication-plugin=mysql_native_password \
  --character-set-server=utf8mb4 \
  --collation-server=utf8mb4_unicode_ci
