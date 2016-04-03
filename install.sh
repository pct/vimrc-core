#!/bin/sh

cd ~
git clone git://github.com/pct/vimrc-core.git
mv .vimrc .vimrc.yours
mv .vim .vim.yours
ln -s vimrc-core/.vimrc
ln -s vimrc-core/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd vimrc-core; ./update.sh; cd -
