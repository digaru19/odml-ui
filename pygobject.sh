#!/bin/bash

sudo apt-get install libgtk-3-dev
sudo apt-get install gir1.2-gtk-3.0
sudo apt-get install libgirepository1.0-dev python-gi-dev python-gobject-dev python3-cairo-dev

# PyCairo (1.13.0)
#wget https://github.com/pygobject/pycairo/releases/download/v1.13.0/pycairo-1.13.0.tar.gz
#tar -xf pycairo-1.13.0.tar.gz
#cd pycairo-1.13.0
#sudo python3 setup.py install
#cd ..

# PyGObject (3.12.2)
wget https://download.gnome.org/sources/pygobject/3.12/pygobject-3.12.2.tar.xz
tar -xf pygobject-3.12.2.tar.xz
cd pygobject-3.12.2
./configure
make
sudo make install
cd ..

