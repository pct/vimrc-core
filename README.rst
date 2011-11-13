vimrc-core
==========

One Step Install (Do you trust me?)
------------------------------------
command::

    $ wget --no-check-certificate https://github.com/vimrc-corerc-core/raw/master/install.sh -O - | sh

The origin .vim and .vimrc will be renamed to .vim.yours and .vimrc.yours

The manual way to install vimrc-core
----------------------------------
1. clone to your home directory::

    $ git clone git://github.com/vimrc-core.git

2. update vimrc-core::

    $ cd vimrc-core; ./update.sh; cd -

3. link .vimrc and .vim from vimrc-core::

    $ ln -s vimrc-core/.vimrc
    $ ln -s vimrc-core/.vim

How to update
-------------
::

    $ cd vimrc-core
    $ ./update.sh

Create your own vim environment
--------------------------------

1. use vimrc-core for basement

2. use my "Vimpyre" project to add other useful vim scripts: https://github.com/pct/vimpyre

