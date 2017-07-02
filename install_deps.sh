#!/bin/bash

sudo apt-get install libffi-dev libglib2.0-dev

# Glib (2.40.2)
wget http://ftp.gnome.org/pub/gnome/sources/glib/2.40/glib-2.40.2.tar.xz
tar -xf glib-2.40.2.tar.xz
cd glib-2.40.2
./configure --prefix=/usr
make
make install
cd ..

# Python GObject Introspection (1.42.0)
wget http://ftp.gnome.org/pub/gnome/sources/gobject-introspection/1.42/gobject-introspection-1.42.0.tar.xz
tar -xf gobject-introspection-1.42.0.tar.xz
cd gobject-introspection-1.42.0
./configure 
make
sudo make install
cd ..

# PyGObject (3.12.2)
wget https://download.gnome.org/sources/pygobject/3.12/pygobject-3.12.2.tar.xz
tar -xf pygobject-3.12.2.tar.xz
cd pygobject-3.12.2
./configure
make
sudo make install
cd ..
