#!/bin/sh
docker run -it -d --name etcdkeeper \
  -p 8888:8080 \
  deltaprojects/etcdkeeper
