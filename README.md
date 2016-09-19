# Vimdot

## About

Vimdot is my personal configuration for vim and neovim text editors.
Now my preferred editor is neovim, so the default installation is for neovim but it may be also used with vim.

It may be used freely if it is found useful.


## Installation for neovim

Firstly install neovim with the additional software required:

- Python support (:help nvim-python). Install neovim python2 and python3 modules vi pip2 and pip3.
- Clipboard support (:help nvim-clipboard). Install xsel software package.

Now apply the configuration. 
**Caution!** It deletes a previous vim configuration.

    [ -d ${XDG_CONFIG_HOME:=$HOME/.config}/nvim ] && rm -rf $XDG_CONFIG_HOME/nvim
    mkdir -p $XDG_CONFIG_HOME/nvim
    git clone git://github.com/chrpinedo/vimdot $XDG_CONFIG_HOME/nvim

Run vim and install plugin with vim-plug:

    :PlugInstall


## Installation for vim

Once installed for neovim, perform the following steps for vim configuration.

    [ -e $HOME/.vim ] && rm -rf $HOME/.vim
    ln -s $XDG_CONFIG_HOME/nvim $HOME/.vim 
    [ -e $HOME/.vimrc ] && rm -f $HOME/.vimrc
    ln -s $XDG_CONFIG_HOME/nvim/vimrc $HOME/.vimrc 
    [ -e $HOME/.gvimrc ] && rm -f $HOME/.gvimrc
    ln -s $XDG_CONFIG_HOME/nvim/gvimrc $HOME/.gvimrc 

