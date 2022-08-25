#!/bin/bash
os=$(cat /etc/os-release | grep ID_LIKE | sed 's/.*=//g')

if [ "$os" = "debian" ]; then
	#for YouCompleteMe
	sudo apt install build-essential cmake vim-nox python3-dev
	sudo apt install mono-complete golang nodejs default-jdk npm
elif [ "$os" = "fedora" ]; then
	#for YouCompleteMe
	sudo dnf install cmake gcc-c++ make python3-devel
fi


#For YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

#install vundle
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
