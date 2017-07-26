#!/bin/bash
apt-get update && apt-get install -y vim
cp .vimrc $HOME/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


