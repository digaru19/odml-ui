#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libffi-dev libglib2.0-0 libglib2.0-dev
sudo apt-get install python python3
sudo apt-get install python3-dev python3-pip
sudo apt-get install gobject-introspection
sudo apt-get install python3-gi python3-gi-cairo python-gi-dev
sudo apt-get install gir1.2-gtk-3.0

echo -e "\n\n #########################################"
echo -e "\n\t Installed all deps !!!"
echo -e "\n\n #########################################"
python3 -c "import gi"

