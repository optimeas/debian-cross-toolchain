FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y debootstrap binfmt-support qemu-user-static qtbase5-dev-tools \
     g++-arm-linux-gnueabihf gdb-multiarch cmake git

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ENV USER_NAME dockeruser
arg uid=1000
arg gid=100

RUN useradd -g $gid -m -s /bin/bash -u $uid $USER_NAME

USER ${USER_NAME}

WORKDIR /home/${USER_NAME}