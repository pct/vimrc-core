#vimrc-core (use neovim)

###One Step Install (Do you trust me?)
command:

    $ wget --no-check-certificate https://github.com/pct/vimrc-core/raw/master/install.sh -O - | sh

The origin .vim and .vimrc will be renamed to .vim.yours and .vimrc.yours

###The manual way to install vimrc-core
1. clone to your home directory:

		$ git clone git://github.com/pct/vimrc-core.git

2. update vimrc-core:

    	$ cd vimrc-core; ./update.sh; cd -

3. link .vimrc and .vim from vimrc-core:

    	$ ln -s vimrc-core/.vimrc

    	$ ln -s vimrc-core/.vim

4. use vim-plug:

      $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

      $ vim +PlugInstall +qall

###How to update

    $ cd vimrc-core

    $ ./update.sh

###Create your own vim environment

I've using Vim-Plug now.


### FAQ
1. Check your vim environment has +python and +ruby or not, just type:

    	$ vim --version


### Tips
1. :NERDTree
2. :FZF (for finding files)
