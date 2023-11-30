#!/bin/sh
docker run -it -d --name etcdkeeper \
-p 8080:8080 \
deltaprojects/etcdkeeper
