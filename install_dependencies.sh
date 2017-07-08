#!/bin/bash

# This script executes outside of the virtual environment,
# hence the packages installed will be system-wide, and not 
# specifically in the virtual environment.

set -ev
echo $TRAVIS_PYTHON_VERSION

if [[ $TRAVIS_OS_NAME == 'linux' ]]
then
    
    if [ ${TRAVIS_PYTHON_VERSION%.*} -eq 3 ]
    then
        packages='python3-gi'
    else
        packages='python-gi'
    fi
    sudo apt-get -qq update
    sudo apt-get install libffi-dev libglib2.0-0 libglib2.0-dev
    sudo apt-get install gobject-introspection libgtk-3-dev
    sudo apt-get install ${packages}

    if [ ${TRAVIS_PYTHON_VERSION%.*} -eq 3 ]
    then
        python3 test/gi_imports.py
    else
        python test/gi_imports.py
    fi
    
else
    brew install libffi
    brew install glib
    brew install gobject-introspection --with-python3
    brew install pygobject3 --with-python3



fi



echo -e "\n\n #########################################"
echo -e " Installed all dependencies successfully !!"
echo -e "\n #########################################"

