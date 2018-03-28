#!/bin/sh

# reset plug.vim
git checkout .vim/autoload/plug.vim

# update
git pull origin master

# neovim
pip install --upgrade neovim
#pip3 install --upgrade neovim

# update plug.vim
./plugin.sh
