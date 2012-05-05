#!/bin/sh

# install vimrc-core
cd ~
git clone git://github.com/pct/vimrc-core.git
mv .vimrc .vimrc.yours
mv .vim .vim.yours
cd vimrc-core; ./update.sh; cd -
ln -s vimrc-core/.vimrc
ln -s vimrc-core/.vim

# replace .vimrc
cd ~/vimrc-core; cp vimrc.vimpyre.web .vimrc

# vimpyre
pip install vimpyre
rehash

# vim plugins
# basement 
vimpyre install vim-scripts/Align vim-scripts/Engspchk tomtom/checksyntax_vim sjl/gundo.vim vim-scripts/matchit.zip
# auto complete
vimpyre install vim-scripts/AutoComplPop Shougo/neocomplcache garbas/vim-snipmate xolox/vim-easytags ervandew/supertab
# web dev
vimpyre install vim-scripts/OOP-javascript-indentation tpope/vim-haml othree/fecompressor.vim othree/html5.vim tpope/vim-ragtag kchmck/vim-coffee-script mattn/zencoding-vim
