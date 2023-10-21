#!/bin/bash -x

# $ cat /etc/os-release 
# NAME="CentOS Stream"
# VERSION="9"

cd ~/Downloads/
git clone https://github.com/pmem/ndctl
pushd ndctl
    meson setup build
    meson compile -C build
    sudo meson install -C build
popd

# Prevent: ndctl: error while loading shared libraries: libndctl.so.6: cannot open shared object file: No such file or directory
sudo ldconfig

which ndctl daxctl cxl
# /usr/bin/ndctl
# /usr/bin/daxctl
# /usr/bin/cxl
ndctl --version
daxctl --version
cxl --version
