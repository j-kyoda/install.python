#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel
yum -y install sqlite-devel readline-devel tk-devel httpd-devel
yum -y install gdbm-devel xz-devel
yum -y install libffi-devel

# install python 3.8.2
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz
if [ -d Python-3.8.2 ]
then
    rm -rf Python-3.8.2
fi
tar fxz Python-3.8.2.tgz
cd Python-3.8.2
./configure --prefix=/opt/python3.8 --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS='-Wl,-rpath=/opt/python3.8/lib'
make
make altinstall
