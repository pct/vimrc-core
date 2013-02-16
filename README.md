#vimrc-core

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

###How to update

    $ cd vimrc-core

    $ ./update.sh

###Create your own vim environment

I've using Vundle now.

Please use [Vundle](https://github.com/gmarik/vundle)

just in your vim env and use:

    :VundleInstall

    :VundleUpdate
