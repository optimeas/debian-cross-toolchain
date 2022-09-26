#!/usr/bin/env bash

usage()
{
	echo "usage: docker-run.sh WORKING_DIRECTORY SYSROOT_DIR"
}

if [ "$#" -ne "2" ]; then
	usage
	exit
fi	

WORKDIR=$1
SYSROOTDIR=$2

docker run -it --rm -v ~/.ssh:/home/dockeruser/.ssh -v ${WORKDIR}:/home/dockeruser/work \
    -v ${SYSROOTDIR}:/home/dockeruser/sysroot optimeas/debian-bullseye-armhf-cross:1.0 ./docker-init.sh
