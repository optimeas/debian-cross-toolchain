#!/bin/bash

export DEB_CROSS_CHROOT=$(ls ${HOME}/sysroot/*-chroot -d)
export DEB_CROSS_SYSROOT=$(ls ${HOME}/sysroot/*-sysroot -d)
export DEB_CROSS_TCF=$(ls ${HOME}/sysroot/*-sysroot/toolchain.cmake)

exec /bin/bash 