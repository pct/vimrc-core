#!/bin/sh

cd ~
git clone https://github.com/pct/vimrc-core
mv .vimrc .vimrc.yours
mv .vim .vim.yours
ln -s vimrc-core/.vimrc
ln -s vimrc-core/.vim
cd vimrc-core; ./update.sh; cd -
