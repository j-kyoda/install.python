#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(arch)

# install python 3.13.13
VERSION=3.13.13
SHORT_VER=3.13

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
