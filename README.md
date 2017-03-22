# Vimdot

## About

Vimdot is my personal configuration for vim and neovim text editors.
So, it can be used equally for vim or neovim.

It may be used freely if it is found useful.


## Installation for neovim

Firstly install neovim with the additional software required:

- Python support (:help nvim-python).
  Install neovim python2 and python3 modules via pip2 and pip3 or package manager.
- Clipboard support (:help nvim-clipboard). Install xsel software package.

Now apply the configuration.
**Caution!** It deletes a previous neovim configuration.

    [ -d ${XDG_CONFIG_HOME:=$HOME/.config}/nvim ] && rm -rf "$XDG_CONFIG_HOME"/nvim
    git clone git://github.com/chrpinedo/vimdot ~/.config/nvim
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


## Install the plugins

Run neovim and install plugin with vim-plug:

    :PlugInstall


## Installation for vim (only if you want to use vim)

Perform the following steps to install the configuration in the vim configuration folder.
**Caution!** It deletes a previous vim configuration.

    [ -e $HOME/.vim ] && rm -rf $HOME/.vim
    [ -e $HOME/.vimrc ] && rm -f $HOME/.vimrc
    [ -e $HOME/.gvimrc ] && rm -f $HOME/.gvimrc
    ln -s ~/.config/nvim ~/.vim

