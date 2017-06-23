#!/bin/bash
apt-get update && apt-get install -y vim
mv .vimrc $HOME/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


