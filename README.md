# docker compose 常用编排

> file 目录弃用，使用[docker-base-images](https://github.com/KINGMJ/docker-base-images) 进行统一管理

## compose 目录为常用容器编排项目

- php7-nginx-mysql

php7、nginx、redis 的一些编排

- docker-elk

elk 的容器编排

- micro-service

微服务容器编排。

Ectd 服务在 mac arm 架构安装会导致 Error "listen tcp 127.0.0.1:2380: bind: address already in use" when running ETCD container 问题

`etcdkeeper.sh` 启动一个 etcd 的可视化管理项目。

## bash

直接通过 shell 命令启动的 docker 程序
