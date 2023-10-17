#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(debian11)
apt-get -y install gcc make
apt-get -y install libzip-dev
apt-get -y install libbz2-dev
apt-get -y install libcurl4-openssl-dev
apt-get -y install libncurses-dev
apt-get -y install libsqlite3-dev
apt-get -y install libssl-dev
apt-get -y install libreadline-dev
apt-get -y install tk-dev
apt-get -y install apache2-dev
apt-get -y install libgdbm-dev
apt-get -y install liblzma-dev
apt-get -y install libffi-dev

# install python 3.11.6
VERSION=3.11.6
SHORT_VER=3.11

cd /usr/local/src
curl -LO https://www.python.org/ftp/python/${VERSION}/Python-${VERSION}.tgz
if [ -d Python-${VERSION} ]
then
    rm -rf Python-${VERSION}
fi
tar fxz Python-${VERSION}.tgz
cd Python-${VERSION}
./configure --prefix=/opt/python${SHORT_VER} --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS="-Wl,-rpath=/opt/python${SHORT_VER}/lib"
make
make altinstall
