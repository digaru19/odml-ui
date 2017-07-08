#!/bin/bash

# This script executes outside of the virtual environment,
# hence the packages installed will be system-wide, and not 
# specifically in the virtual environment.

set -ev

echo $TRAVIS_PYTHON_VERSION

if [ ${TRAVIS_PYTHON_VERSION%.*} -eq 3 ]
then
    packages='python3-gi'
else
    packages='python-gi'
fi

sudo apt-get -qq update
sudo apt-get install libffi-dev libglib2.0-0 libglib2.0-dev
sudo apt-get install gobject-introspection
sudo apt-get install ${packages}
sudo apt-get install libgtk-3-dev # gir1.2-glib-2.0 

if [ ${TRAVIS_PYTHON_VERSION%.*} -eq 3 ]
then
    python3 test/gi_imports.py
else
    python test/gi_imports.py
fi

echo -e "\n\n #########################################"
echo -e " Installed all dependencies successfully !!"
echo -e "\n #########################################"

