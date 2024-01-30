#!/bin/bash -e

mkdir cheese-tmp; cd cheese-tmp

apt-get -y install meson cmake make git \
 dpkg-dev debhelper devscripts equivs pkg-config wget

apt-get -y install build-essential git cmake flex bison valac gobject-introspection \
   gettext gtk-doc-tools yelp-tools appstream-util libx11-dev libgstreamer-plugins-bad1.0-dev \
   libgnome-desktop-3-dev libclutter-gtk-1.0-dev libclutter-gst-3.0-dev libcanberra-gtk3-dev

wget http://deb.debian.org/debian/pool/main/c/cheese/cheese_44.1.orig.tar.xz
wget http://deb.debian.org/debian/pool/main/c/cheese/cheese_44.1-1.debian.tar.xz

xz -cd cheese_44.1.orig.tar.xz | tar xvf -
cd cheese-44.1

xz -cd ../cheese_44.1-1.debian.tar.xz | tar xvf -

cp /etc/apt/sources.list /etc/apt/sources.list~
sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
apt-get update

apt-get -y build-dep cheese
dpkg-buildpackage -b -d -uc -us

cd ..

cd ..

