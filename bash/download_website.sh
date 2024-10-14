#!/bin/bash

# 通过 wget 爬取并下载站点

# 定义下载地址和域名
DOMAIN="learn.lianglianglee.com"
URL="https://learn.lianglianglee.com/%E4%B8%93%E6%A0%8F/12%E6%AD%A5%E9%80%9A%E5%85%B3%E6%B1%82%E8%81%8C%E9%9D%A2%E8%AF%95-%E5%AE%8C/"

# 执行 wget 下载
wget --recursive --no-clobber --page-requisites \
  --html-extension --convert-links --restrict-file-names=windows \
  --domains "$DOMAIN" \
  --no-parent --wait=15 --random-wait \
  --retry-on-http-error=429 --tries=4 --waitretry=15 --level=1 \
  --accept=html,jpg,png,gif,jpeg,txt,md \
  "$URL"
  
# 检查 wget 命令的退出状态
if [ $? -eq 0 ]; then
  osascript -e 'display notification "文件已成功下载" with title "下载完成"' && sleep 3
else
  osascript -e 'display notification "请检查日志文件" with title "下载失败"' && sleep 3
fi
