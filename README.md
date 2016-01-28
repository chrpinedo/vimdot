Vimdot
======

About
-----

Vimdot is my personal configuration for vim and neovim text editors.
It may be used freely if it is found useful.

Installation for vim
--------------------

Installation on GNU/Linux.
Caution! It deletes a previous vim configuration.

    [ -d ~/.vim ] && rm -rf ~/.vim
    [ -e ~/.vimrc -o -h ~/.vimrc ] && rm ~/.vimrc
    [ -e ~/.gvimrc -o -h ~/.gvimrc ] && rm ~/.gvimrc
    git clone git://github.com/chrpinedo/vimdot ~/.vim

Run vim and install plugin with vim-plug:

    :PlugInstall


Installation for neovim
-----------------------

Once installed for vim, perform the following steps for neovim configuration.

    mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
    ln -s ~/.vim $XDG_CONFIG_HOME/nvim

Install additional software required by neovim:

* Python support (:help nvim-python). Install neovim python2 and python3 modules
  vi pip2 and pip3.
* Clipboard support (:help nvim-clipboard). Install xsel software package.
