#!/bin/bash

python3 --version
sudo apt-get update
# sudo apt-get upgrade
sudo apt-get install libffi-dev libglib2.0-0 libglib2.0-dev make
sudo apt-get install python python3
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install gobject-introspection
sudo apt-get install python-gi python3-gi python3-gi-cairo python-gi-dev
sudo apt-get install libgtk-3-dev gir1.2-gtk-3.0 gir1.2-ibus-1.0

echo -e "\n\n #########################################"
echo -e "\n\t Installed all deps !!!"
echo -e "\n\n #########################################"

dpkg-query -L python3-gi

python3 -c "import gi"

