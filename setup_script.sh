#!/bin/bash
# Purpose: automate the setup process for a new linux install 
# Created by: Anthony Herrera
# Notes: 
# Revisions:
#               2018.07.18 - Intitial Version
#               2018.09.13 - updated with htop


# Copy over bashrc and vimrc
cp ./rc_files/bashrc ~/.bashrc
cp ./rc_files/vimrc ~/.vimrc

# Install everything that is needed
sudo apt-get install git
sudo apt-get install tmux
sudo apt-get install cmake
sudo apt-get install python-dev
sudo apt-get install python3-dev
sudo apt-get install vim-nox
sudo apt-get install htop
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Update bash with changes
. ~/.bashrc

clear
echo "Run vim and :PluginInstall"
echo "Update ycm with .ycm_"
echo "Then run YCM_install script"
