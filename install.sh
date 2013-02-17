#!/bin/sh

cd ~
git clone git://github.com/pct/vimrc-core.git
mv .vimrc .vimrc.yours
mv .vim .vim.yours
cd vimrc-core; ./update.sh; cd -
ln -s vimrc-core/.vimrc
ln -s vimrc-core/.vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
