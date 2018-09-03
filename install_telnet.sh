#!/bin/sh
set -x
set -e
VERSION=1.9.4
SOURCE=http://ftp.gnu.org/gnu/inetutils/inetutils-$VERSION.tar.gz
wget -c -S $SOURCE
tar xvzf inetutils-$VERSION.tar.gz
cd inetutils-$VERSION
# Only telnet and ftp are needed as of 10.13
./configure --disable-servers --disable-clients --disable-libls \
   -enable-telnet -enable-ftp
make -j 2
# Password
sudo make install


