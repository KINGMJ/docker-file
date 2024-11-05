#!/bin/bash

# 进入脚本所在目录，保证脚本执行时在脚本所在目录
cd $(dirname "$0")
CURRENT_DIR=$(pwd)

# 通过 wget 爬取并下载站点
# 定义下载地址和域名
DOMAIN="learn.lianglianglee.com"
URL="https://learn.lianglianglee.com/%E4%B8%93%E6%A0%8F/%E5%88%86%E5%B8%83%E5%BC%8F%E6%8A%80%E6%9C%AF%E5%8E%9F%E7%90%86%E4%B8%8E%E7%AE%97%E6%B3%95%E8%A7%A3%E6%9E%90/"

# cd 到目标目录
cd /Users/jerrymei/MyCode/geektime/learn.lianglianglee.com/专栏/test

# 执行 wget 下载
# 如果只下载某个具体的页面， level 指定为 0
wget --recursive --no-clobber --page-requisites \
  --html-extension --convert-links --restrict-file-names=windows \
  --domains "$DOMAIN" \
  --no-parent --wait=15 --random-wait \
  --retry-on-http-error=429 --tries=4 --waitretry=15 --level=1 \
  --accept=html,jpg,png,gif,jpeg,svg,txt,md \
  --accept-regex '.*\.(jpg|png|gif|jpeg|svg|html|txt|md)?$' \
  "$URL" 2>&1 | tee "$CURRENT_DIR/download_website.log" # 同时输出日志到控制台和文件

# 输出 wget 命令的退出状态
echo "wget 命令退出状态: $?"

# 检查 wget 命令的退出状态
if [ $? -eq 0 ]; then
  echo "下载成功，准备执行 osascript 通知"
  osascript -e 'display notification "文件已成功下载" with title "下载完成"' && sleep 3
else
  echo "下载失败，准备执行 osascript 通知"
  osascript -e 'display notification "请检查日志文件" with title "下载失败"' && sleep 3
fi