# syntax=docker/dockerfile:1
FROM ubuntu:22.04
# make, g++, zlib1g-devを追加
RUN apt update && apt install -y \
        python3 \
        ca-certificates \
        bzip2 \
        gzip \
        lzma \
        7zip \
        xzip \
        make \
        g++  \
        zlib1g-dev \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*
# minisatファイルはrunの時にマウントして簡単に手を加えられるようにする
CMD cd /root/minisat; /bin/bash
