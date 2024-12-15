# docker compose 常用编排

> file 目录弃用，使用[docker-base-images](https://github.com/KINGMJ/docker-base-images) 进行统一管理

compose 目录为常用容器编排项目

## php7-nginx-mysql

php7、nginx、redis 的一些编排

## docker-elk

elk 的容器编排，支持集群部署，官方示例

## micro-service

微服务容器编排，包含开发中常用到的中间件合集，如果某个服务不需要，可以注释掉。

- `docker-compose-dev.yml`为项目基础设施，包括：etcd、mysql、postgresql、redis、elk、jaeger、rabbitmq、kafka 等等。
- `docker-compose.yml` 为 go-zero 的微服务项目部署，包括 rpc 服务、api 服务以及其他语言，比如 java/php 的网关服务。

运行：`docker-compose -f docker-compose-dev.yml up -d`

### ETCD

Ectd 服务在 mac arm 架构安装会导致 `Error "listen tcp 127.0.0.1:2380: bind: address already in use" when running ETCD container` 问题。新版本好像没有这个问题，但是如果主机上安装了k8s，它会与k8s的 etcd 冲突，也会导致这个问题。

`etcdkeeper.sh` 启动一个 etcd 的可视化管理项目。

访问地址：http://localhost:8080

### MySQL

mysql 支持主从复制方案，配置文件在`conf.bak`里面

【注意】：第一次启动需要注释掉mysql 配置文件卷的映射，不然会初始化失败

### Postgresql

### Redis

### ELK

比较老的版本部署方式，弃用。使用 `docker-elk` 里面最新的集群部署方式

### Jaeger & Prometheus

https://www.jaegertracing.io/docs/1.20/cli/#jaeger-all-in-one-elasticsearch

jaeger 使用内存进行存储，Elasticsearch 因为证书问题没有配置成功。
grafana 的默认用户密码为：admin/admin，登录后修改为 admin/123456

## bash

一些常用的Shell脚本，比如：直接通过 shell 命令启动的 docker 程序。

## 项目端口占用

- etcd: 2379 2380
- etcdkeeper: 8888
- postgresql: 5432
- mysql: 3306
- redis: 6379
- elasticsearch: 9200 9300
- kibana: 5601
- kafka-ui: 8080
- rabbitmq: 5672 8081（ui）
- jaeger: 16686 (ui)