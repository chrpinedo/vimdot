Vimdot
======

About
-----

Vimdot is my personal configuration for vim text editor. It may be used
freely if it is found useful.

Installation
------------

Installation on GNU/Linux:

	[ -d ~/.vim ] && mv ~/.vim ~/.vim.bkp
	[ -f ~/.vimrc -o -e ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bkp
	[ -f ~/.gvimrc -o -e ~/.gvimrc ] && mv ~/.gvimrc ~/.gvimrc.bkp
	git clone git://github.com/chrpinedo/vimdot ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
	cd ~/.vim
	git submodule init
	git submodule update
	cd -

Updating plugins
----------------

To update plugins on GNU/Linux:

	cd ~/.vim
	git submodule foreach 'git fetch origin --tags; git checkout master; git pull'
	git submodule update --init --recursive
	cd -
