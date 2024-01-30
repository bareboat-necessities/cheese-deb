#!/bin/bash -e

sudo apt-get -y install meson cmake make git \
 dpkg-dev debhelper devscripts equivs pkg-config

sudo apt-get -y install build-essential git cmake flex bison 

dpkg-buildpackage -b -d -uc -us
