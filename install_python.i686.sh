#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc glibc-devel.i686
yum -y install zlib-devel.i686 bzip2-devel.i686 openssl-devel.i686 ncurses-devel.i686
yum -y install sqlite-devel.i686 readline-devel.i686 tk-devel.i686 httpd-devel.i686
yum -y install mysql-devel.i686 gdbm-devel.i686 xz-devel.i686
yum -y install libffi-devel.i686

# install python 3.7.3
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar fxz Python-3.7.3.tgz
cd Python-3.7.3
BASECFLAGS=-m32 CFLAGS=-m32 ./configure --prefix=/opt/python3.7_i686 --with-ensurepip=install \
--with-universal-archs=32-bit \
--with-threads --enable-shared LDFLAGS='-m32 -Wl,-rpath=/opt/python3.7_i686/lib'
make
make altinstall
