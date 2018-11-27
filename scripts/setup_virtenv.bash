#!/bin/bash

# Deativate the current environment
deactivate

# Create the virtual env
dir_name=virt_env
if [ ! -d "$dir_name" ]; then
    virtualenv -p /usr/bin/python3 virt_env
fi

# Activate the environment
. ./virt_env/bin/activate

# Install requirements if they are there
if [ -f requirements.txt ]; then
    pip3 install -r requirements.txt
else
    echo No requirements.txt file found
fi

if [ -f requirements-dev.txt ]; then
    pip3 install -r requirements-dev.txt
else
    echo No dev-requirements.txt file found
fi

