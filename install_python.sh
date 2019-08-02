#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel
yum -y install sqlite-devel readline-devel tk-devel httpd-devel
yum -y install mysql-devel gdbm-devel xz-devel
yum -y install libffi-devel

# install python 3.7.4
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar fxz Python-3.7.4.tgz
cd Python-3.7.4
./configure --prefix=/opt/python3.7 --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS='-Wl,-rpath=/opt/python3.7/lib'
make
make altinstall
