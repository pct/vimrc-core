#!/bin/sh

cd ~
git clone https://github.com/pct/vimrc-core
mv .vimrc .vimrc.yours
mv .vim .vim.yours
ln -s vimrc-core/.vimrc
ln -s vimrc-core/.vim
mkdir -p ~/.config
cp -rpf vimrc-core/nvim ~/.config/
cd vimrc-core; ./update.sh; cd -
