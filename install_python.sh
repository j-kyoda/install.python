#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(debian10)
apt-get install gcc make
apt-get install libzip-dev
apt-get install libbz2-dev
apt-get install libcurl4-openssl-dev
apt-get install libncurses-dev
apt-get install libsqlite3-dev
apt-get install libreadline-dev
apt-get install tk-dev
apt-get install apache2-dev
apt-get install libgdbm-dev
apt-get install liblzma-dev
apt-get install libffi-dev

# install python 3.9.2
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/3.9.2/Python-3.9.2.tgz
if [ -d Python-3.9.2 ]
then
    rm -rf Python-3.9.2
fi
tar fxz Python-3.9.2.tgz
cd Python-3.9.2
./configure --prefix=/opt/python3.9 --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS='-Wl,-rpath=/opt/python3.9/lib'
make
make altinstall
