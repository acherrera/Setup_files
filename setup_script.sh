#!/bin/bash
# Purpose: automate the setup process for a new linux install 
# Created by: Anthony Herrera
# Notes: 
# Revisions:
#               2018.07.18 - Intitial Version


# Copy over bashrc and vimrc
cp ./rc_files/bashrc ~/.bashrc
cp ./rc_files/vimrc ~/.vimrc

# Install everything that is needed
sudo apt-get install git
sudo apt-get install cmake
sudo apt-get install python-dev
sudo apt-get install python3-dev
sudo apt-get install vim-nox
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

clear
echo "Run vim and :PluginInstall"
