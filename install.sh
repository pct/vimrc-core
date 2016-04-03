#!/bin/sh

cd ~
git clone git://github.com/pct/vimrc-core.git
mv .vimrc .vimrc.yours
mv .vim .vim.yours
ln -s vimrc-core/.vimrc
ln -s vimrc-core/.vim
cd vimrc-core; ./update.sh; cd -
