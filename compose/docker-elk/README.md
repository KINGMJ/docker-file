# docker-elk

## 介绍

elasticsearch docker 部署项目，[官网示例](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-compose-file)

## 安装教程

1. `.env`修改各种配置，网络需要设置为：指定的网络
2. 启动容器
3. 将证书拷贝出来，用于访问Elasticsearch

```
docker cp docker-elk-es01-1:/usr/share/elasticsearch/config/certs/ca/ca.crt .
```

## 访问

```
# 使用证书访问 elastic 服务
curl -u elastic:a123456 https://localhost:9200 --cacert ./ca.crt

# 不使用证书访问
curl -u elastic:a123456 https://localhost:9200 --insecure
```


## 问题：

在 linux 上，默认启动 kibana 的密码没有设置成功

```
# 进入 kibana 容器执行下面命令，认证失败：

curl -u kibana_system:password https://es01:9200/ --insecure
```

需要手动重置一下`kibana_system`的密码：

```
# 进入 elastic 容器
docker exec -it docker-elk-es01-1 /bin/bash

# reset kibana_system password
elasticsearch-reset-password -u kibana_system -i

# typed your password
...
```

重启 kibana 容器

```
docker compose restart kibana
```

注意：8.0.0 版本测试可以重置密码，新版本会报错。