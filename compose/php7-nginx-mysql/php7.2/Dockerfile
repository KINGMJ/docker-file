FROM leleos/php-fpm:7.2
RUN echo ''>/etc/apt/sources.list
RUN echo deb http://mirrors.163.com/debian/ jessie main non-free contrib >>/etc/apt/sources.list \
&&echo deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib >>/etc/apt/sources.list \
&&echo deb-src http://mirrors.163.com/debian/ jessie main non-free contrib >>/etc/apt/sources.list \
&&echo deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib >>/etc/apt/sources.list \
&&echo deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib >>/etc/apt/sources.list \
&&echo deb-src http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib >>/etc/apt/sources.list
RUN  apt-get clean
RUN  apt-get update --fix-missing
