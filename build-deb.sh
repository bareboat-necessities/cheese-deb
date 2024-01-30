#!/bin/bash -e

sudo apt-get -y install meson cmake make git \
 dpkg-dev debhelper devscripts equivs pkg-config

sudo apt-get -y install build-essential git cmake flex bison 

wget http://deb.debian.org/debian/pool/main/c/cheese/cheese_44.1.orig.tar.xz
wget http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.8-10.debian.tar.xz

dpkg-buildpackage -b -d -uc -us
