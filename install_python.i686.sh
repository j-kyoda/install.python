#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS8)
dnf -y install gcc make glibc-devel.i686
dnf -y install zlib-devel.i686 bzip2-devel.i686 openssl-devel.i686 ncurses-devel.i686
dnf -y install sqlite-devel.i686 readline-devel.i686 tk-devel.i686 httpd-devel.i686
dnf -y install gdbm-devel.i686 xz-devel.i686
dnf -y install libffi-devel.i686

# install python 3.9.0
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
if [ -d Python-3.9.0 ]
then
    rm -rf Python-3.9.0
fi
tar fxz Python-3.9.0.tgz
cd Python-3.9.0
BASECFLAGS=-m32 CFLAGS=-m32 ./configure --prefix=/opt/python3.9_i686 --with-ensurepip=install \
--with-universal-archs=32-bit \
--with-threads --enable-shared LDFLAGS='-m32 -Wl,-rpath=/opt/python3.9_i686/lib'
make
make altinstall
