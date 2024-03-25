# docker compose 常用编排

> file 目录弃用，使用[docker-base-images](https://github.com/KINGMJ/docker-base-images) 进行统一管理

compose 目录为常用容器编排项目

## php7-nginx-mysql

php7、nginx、redis 的一些编排

## docker-elk

elk 的容器编排

## micro-service

微服务容器编排

### ETCD

Ectd 服务在 mac arm 架构安装会导致 Error "listen tcp 127.0.0.1:2380: bind: address already in use" when running ETCD container 问题。目前先在非 arm 架构部署，后面再解决

`etcdkeeper.sh` 启动一个 etcd 的可视化管理项目。

### MySQL

mysql 支持主从复制方案，配置文件在`conf.bak`里面

### Postgresql

### Redis


## bash

直接通过 shell 命令启动的 docker 程序
