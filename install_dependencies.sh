#!/bin/bash

python --version
python3 --version

sudo apt-get -qq update
sudo apt-get install libffi-dev libglib2.0-0 libglib2.0-dev
sudo apt-get install gobject-introspection
sudo apt-get install python-gi python3-gi python3-gi-cairo python-gi-dev
sudo apt-get install gir1.2-glib-2.0 # libgtk-3-dev

python -c "import gi"
python -c "from gi import pygtkcompat"
python3 -c "import gi"
python3 -c "from gi import pygtkcompat"

echo -e "\n\n #########################################"
echo -e " Installed all dependencies successfully !!"
echo -e "\n #########################################"

