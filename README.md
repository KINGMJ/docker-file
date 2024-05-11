# docker compose 常用编排

> file 目录弃用，使用[docker-base-images](https://github.com/KINGMJ/docker-base-images) 进行统一管理

compose 目录为常用容器编排项目

## php7-nginx-mysql

php7、nginx、redis 的一些编排

## docker-elk

elk 的容器编排，支持集群部署，官方示例

## micro-service

微服务容器编排。`docker-compose-dev.yml`为项目基础设施，包括：etcd、mysql、postgresql、redis、elk、jaeger 等等。
`docker-compose.yml` 为 go-zero 的微服务项目部署，包括 rpc 服务、api 服务以及其他语言，比如 php 的网关服务。

### ETCD

Ectd 服务在 mac arm 架构安装会导致 Error "listen tcp 127.0.0.1:2380: bind: address already in use" when running ETCD container 问题。目前先在非 arm 架构部署，或者使用 k8s 里面部署的 etcd 服务。后面再解决

`etcdkeeper.sh` 启动一个 etcd 的可视化管理项目。

访问地址：http://localhost:8080

### MySQL

mysql 支持主从复制方案，配置文件在`conf.bak`里面

### Postgresql

### Redis

## bash

直接通过 shell 命令启动的 docker 程序


## 项目端口占用

- etcd: 2379 2380
- etcdkeeper: 8888
- postgresql: 5432
- mysql: 3306
- redis: 6379
- elasticsearch: 9200 9300
- kibana: 5601
- kafka-ui: 8080
- rabbitmq: 8081