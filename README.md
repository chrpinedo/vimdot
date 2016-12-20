# Vimdot

## About

Vimdot is my personal configuration for vim and neovim text editors.
So, it can be used equally for vim or neovim.

It may be used freely if it is found useful.


## Installation for vim (required)

Perform the following steps to install the configuration in the vim configuration folder.
**Caution!** It deletes a previous vim configuration.

    [ -e $HOME/.vim ] && rm -rf $HOME/.vim
    [ -e $HOME/.vimrc ] && rm -f $HOME/.vimrc
    [ -e $HOME/.gvimrc ] && rm -f $HOME/.gvimrc
    git clone git://github.com/chrpinedo/vimdot $HOME/.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


## Installation for neovim (only if you use neovim)

If you use neovim instead of vim, firstly install neovim with the additional software required:

- Python support (:help nvim-python). Install neovim python2 and python3 modules vi pip2 and pip3.
- Clipboard support (:help nvim-clipboard). Install xsel software package.

Now apply the configuration. 
**Caution!** It deletes a previous neovim configuration.

    [ -d ${XDG_CONFIG_HOME:=$HOME/.config}/nvim ] && rm -rf $XDG_CONFIG_HOME/nvim
    ln -s $HOME/.vim $XDG_CONFIG_HOME/nvim


## Install the plugins (required)

Run vim or neovim and install plugin with vim-plug:

    :PlugInstall

Please, take into account that some plugins such as YouCompleteMe may require additional steps to be completely installed. Read the documentation of each plugin.
