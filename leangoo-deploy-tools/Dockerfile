FROM ubuntu:20.04

# 安装 rsync 等lib库
RUN apt-get clean \
    && apt-get update --fix-missing \
    && apt-get install -y build-essential libssl-dev curl rsync xinetd

# 安装nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.1/install.sh | bash

RUN echo 'export NVM_DIR="$HOME/.nvm"'                                       >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> "$HOME/.bashrc"

# 安装 node v12.18.3 和 v8.11.2版本
# 并设置默认版本为 v12.18.3
# 安装 yarn
RUN bash -c 'source $HOME/.nvm/nvm.sh && \
    nvm install 12.18.3 && \
    nvm install 8.11.2 && \
    nvm use 12.18.3 && \
    nvm alias default 12.18.3 && \
    npm install -g yarn'

