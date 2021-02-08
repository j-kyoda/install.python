#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS8)
dnf -y install gcc make
dnf -y install zlib-devel bzip2-devel openssl-devel ncurses-devel
dnf -y install sqlite-devel readline-devel tk-devel httpd-devel
dnf -y install gdbm-devel xz-devel
dnf -y install libffi-devel

# install python 3.9.1
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz
if [ -d Python-3.9.1 ]
then
    rm -rf Python-3.9.1
fi
tar fxz Python-3.9.1.tgz
cd Python-3.9.1
./configure --prefix=/opt/python3.9 --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS='-Wl,-rpath=/opt/python3.9/lib'
make
make altinstall
