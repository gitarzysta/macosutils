#!/bin/sh
set -x
set -e
VERSION=1.9.4
SOURCE=http://ftp.gnu.org/gnu/inetutils/inetutils-$VERSION.tar.gz
wget -c -S $SOURCE
tar xvzf inetutils-$VERSION.tar.gz
cd inetutils-$VERSION
./configure --disable-servers --disable-dnsdomainname \
--disable-hostname --disable-ping --disable-ping6 --disable-rcp \
--disable-rexec --disable-rlogin --disable-rsh --disable-logger \
--disable-talk --disable-tftp --disable-whois --disable-ifconfig \
--disable-traceroute
make -j 2
# Password
sudo make install


