Vimdot
======

About
-----

Vimdot is my personal configuration for vim text editor. It may be used
freely if it is found useful.

Installation
------------

Installation on GNU/Linux. Caution! it deletes a previous vim configuration.

	[ -d ~/.vim ] && rm -rf ~/.vim
	[ -e ~/.vimrc -o -h ~/.vimrc ] && rm ~/.vimrc
	[ -e ~/.gvimrc -o -h ~/.gvimrc ] && rm ~/.gvimrc
	git clone git://github.com/chrpinedo/vimdot ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

Run vim and install plugin with vim-plug:

	:PlugInstall
