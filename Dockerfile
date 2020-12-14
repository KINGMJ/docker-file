FROM node:12.18.3

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone

RUN apt-get clean && apt-get update --fix-missing
RUN apt-get install -y rsync xinetd

CMD node
