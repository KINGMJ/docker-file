#!/bin/sh
# 开启一个 dtm 服务
docker run -itd  --name dtm -p 36789:36789 -p 36790:36790  yedf/dtm:latest
