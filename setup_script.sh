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
sudo apt-get install python3-pip
sudo apt-get install htop
sudo apt-get install build-essential
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Adding NVIM
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo pip3 install --upgrade neovim
mkdir ~/.config/nvim
cp ./rc_files/init.vim ~/.config/nvim/

# Update bash with changes
. ~/.bashrc

# Bash Powerline
pip3 install powerline-shell
sudo apt-get install fonts-powerline


# Python stuff
pip3 install flake8
pip3 install wheel
sudo apt-get install pylint


# Update/upgrade everything before installing
sudo apt-get update
sudo apt-get upgrade

# Now do the manual stuff
clear
echo "Move ycm_extra_conf.py to ~/.vim/"
echo "Run vim and :PluginInstall"
echo "Then run YCM_install script"
