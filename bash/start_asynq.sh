#!/bin/sh
# docker run --rm --platform linux/amd64 -p 8070:8070 hibiken/asynqmon \
#   --port=8070 \
#   --redis-addr=host.docker.internal:6379 \
#   --redis-password=123456 \
#   --redis-db=0


# UAT 
# asynqmon 不支持 ACL 认证，所以使用 dash 命令来访问
asynq dash -U dine --config ./asynq.yaml


# 查看归档的任务 --state 参数必须指定
# asynq task list --queue=default --state=archived  -U dine --config ./etc/asynq.yaml

# 删除任务 --id 参数必须指定
# asynq task delete --queue=default --id=dailyRevenueFact:generate  -U dine --config ./etc/asynq.yaml