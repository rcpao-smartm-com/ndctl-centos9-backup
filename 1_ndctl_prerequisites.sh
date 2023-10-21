#!/bin/bash -x

# $ cat /etc/os-release 
# NAME="CentOS Stream"
# VERSION="9"

sudo dnf -y groupinstall "Development Tools"
# sudo dnf -y install git-core

# https://docs.pmem.io/ndctl-user-guide/installing-ndctl/installing-ndctl-from-source-on-linux#centos-8.x-centos-stream
dnf repolist
sudo dnf -y install epel-release
#sudo dnf -y config-manager --set-enabled powertools # only for CentOS 8
# Error: No matching repo to modify: powertools.
sudo dnf -y config-manager --set-enabled crb # only for CentOS 9
dnf repolist # epel-release crb

#sudo dnf -y install git gcc gcc-c++ autoconf automake asciidoc bash-completion xmlto libtool pkgconfig glib2 glib2-devel libfabric libfabric-devel doxygen graphviz pandoc ncurses kmod kmod-devel libudev-devel libuuid-devel json-c-devel keyutils-libs-devel gem make bc meson
# Error: Unable to find a match: libfabric-devel kmod-devel json-c-devel meson
# sudo gem install asciidoctor
# sudo: gem: command not found
#sudo dnf -y install asciidoctor

sudo dnf -y install git 
sudo dnf -y install gcc 
sudo dnf -y install gcc-c++ 
sudo dnf -y install autoconf 
sudo dnf -y install automake 
sudo dnf -y install asciidoc 
sudo dnf -y install bash-completion 
sudo dnf -y install xmlto
sudo dnf -y install libtool
sudo dnf -y install pkgconfig 
sudo dnf -y install glib2 
sudo dnf -y install glib2-devel 
sudo dnf -y install libfabric 
sudo dnf -y install libfabric-devel 
sudo dnf -y install doxygen 
sudo dnf -y install graphviz 
sudo dnf -y install pandoc 
sudo dnf -y install ncurses 
sudo dnf -y install kmod 
sudo dnf -y install kmod-devel 
sudo dnf -y install libudev-devel 
sudo dnf -y install libuuid-devel 
sudo dnf -y install json-c-devel 
sudo dnf -y install keyutils-libs-devel 
sudo dnf -y install gem 
sudo dnf -y install make 
sudo dnf -y install bc 
sudo dnf -y install meson
sudo dnf -y install asciidoctor


# obsoleted by crb repo
# https://tutorialforlinux.com/2022/06/06/step-by-step-meson-centos-stream-9-installation-guide/2/
#sudo dnf -y install python3-pip
#pip3 install meson # this user only
# sudo pip3 install meson # system wide / all users


# https://github.com/pmem/ndctl/blob/main/ndctl.spec.in
sudo dnf -y install autoconf
sudo dnf -y install rubygem-asciidoctor
sudo dnf -y install libtraceevent-devel
sudo dnf -y install libtracefs-devel
sudo dnf -y install xmlto
sudo dnf -y install automake
sudo dnf -y install libtool

sudo dnf -y install pkgconfig
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
#sudo dnf -y install libkmod
 sudo dnf -y install kmod-libs
#sudo dnf -y install libudev
 sudo dnf -y install libudev-devel
sudo dnf -y install uuid
sudo dnf -y install json-c
sudo dnf -y install bash-completion
sudo dnf -y install systemd

sudo dnf -y install keyutils-libs-devel
sudo dnf -y install systemd-rpm-macros
sudo dnf -y install iniparser-devel
sudo dnf -y install meson


sudo dnf -y install cmake


