# docker-elk

#### 介绍

elastic search docker 部署项目

#### 安装教程

1. `.env`修改各种配置
2. 网络需要设置为：talentkey-docker-deploy_talentkey

#### 问题：

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