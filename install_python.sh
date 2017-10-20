#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel
yum -y install sqlite-devel readline-devel tk-devel httpd-devel
yum -y install mysql-devel gdbm-devel xz-devel

# install python 3.6.3
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar fxz Python-3.6.3.tgz
cd Python-3.6.3
./configure --prefix=/opt/python3.6 --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS='-Wl,-rpath=/opt/python3.6/lib'
make
make altinstall
