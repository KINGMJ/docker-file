FROM ubuntu:20.04
RUN echo ''>/etc/apt/sources.list
RUN echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse >>/etc/apt/sources.list \
&&deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse >>/etc/apt/sources.list \
&&echo deb-src http://mirrors.163.com/debian/ jessie main non-free contrib >>/etc/apt/sources.list \
&&echo deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib >>/etc/apt/sources.list \
&&echo deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib >>/etc/apt/sources.list \
&&echo deb-src http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib >>/etc/apt/sources.list

# 设置字符编码
ENV LANG C.UTF-8

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

# 安装lib库
RUN apt-get clean \
    && apt-get update --fix-missing \
    && apt-get install -y zlib1g-dev libevent-dev libzmq-dev vim net-tools

# 安装php扩展
RUN pecl install libevent-0.1.0 \
    && docker-php-ext-enable libevent \
    && pecl install channel://pecl.php.net/zmq-1.1.3 \
    && docker-php-ext-enable zmq

# @todo 自定义扩展最好不要用修改php.ini的方式来做
RUN mkdir /php-extension
COPY ioncube_loader_lin_5.4.so /php-extension

# 配置文件copy到容器内部
COPY php.ini /usr/local/etc/php/php.ini
