#!/bin/bash
# Purpose: runs the vim installation scripts
# Created by: Anthony Herrera
# Notes: $1 - number of cores to run
# Revisions
#           2018.07.18 - intial creation


if [ $# -eq 0 ]
    then
        echo "Specify number of cores to use"
        exit
fi

YCM_CORES=$1 ~/.vim/bundle/YouCompleteMe/install.py
