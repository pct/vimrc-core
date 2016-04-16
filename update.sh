#!/bin/sh

# reset plug.vim
git checkout .vim/autoload/plug.vim

# update
git pull origin master

# update plug.vim
./plugin.sh
