FROM debian:latest
MAINTAINER pd_web0 <veto@myridia.com>

RUN apt-get update && apt-get install -y \
    curl \
    emacs-nox \
    wget \
    apt-utils \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["usr/bin/mysqldump"]
