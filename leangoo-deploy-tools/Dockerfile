FROM node:12.18.3

# 安装 rsync 等lib库
RUN apt-get clean \
    && apt-get update --fix-missing \
    && apt-get install -y build-essential libssl-dev curl rsync xinetd

# 安装 n
RUN npm install -g n

# 安装 node v8.11.2 和 v12.18.3 版本
RUN yarn -v
RUN n 8.11.2
RUN n 12.18.3
