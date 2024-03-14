FROM ubuntu:22.04


ENV HOME="/root"
ENV NVM_DIR="${HOME}/.nvm"
ENV NVM_VERSION=v0.39.3
ENV NODE_VERSION=18

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential\
        libssl-dev \
        libpng-dev \
        git \
        curl \
        nano \
        ca-certificates \
    && git clone https://github.com/nvm-sh/nvm.git "${NVM_DIR}" 
WORKDIR  "${NVM_DIR}"
RUN git checkout ${NVM_VERSION} \
    && \. "./nvm.sh" \
    && nvm install "${NODE_VERSION}" \
    && echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> "${HOME}/.bashrc" \
    && echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> "${HOME}/.bashrc"  

RUN sed -e '/[ -z "$PS1" ] && return/s/^/#/g' -i /root/.bashrc

WORKDIR "/var/www/html/Subu"
