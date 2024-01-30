#!/bin/bash -e

mkdir cheese-tmp; cd cheese-tmp

sudo apt-get -y install meson cmake make git \
 dpkg-dev debhelper devscripts equivs pkg-config

sudo apt-get -y install build-essential git cmake flex bison 

wget http://deb.debian.org/debian/pool/main/c/cheese/cheese_44.1.orig.tar.xz
wget http://deb.debian.org/debian/pool/main/c/cheese/cheese_44.1-1.debian.tar.xz

xz -cd cheese_44.1-1.debian.tar.xz | tar xvf -

dpkg-buildpackage -b -d -uc -us

cd ..

