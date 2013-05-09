Vimdot
======

About
-----

Vimdot is my personal configuration for vim text editor. It may be used
publically if it is found useful.

Installation
------------

Installation on GNU/Linux:

	cd ~
	git clone git://github.com/chrpinedo/vimdot .vim
	[ -f ~/.vimrc ] && rm ~/.vimrc
	[ -f ~/.gvimrc ] && rm ~/.gvimrc
	ln -s ~/vim/vimrc ~/.vimrc
	ln -s ~/vim/gvimrc ~/.gvimrc
	cd ~/.vim
	git submodule init
	git submodule update

Updating plugins
----------------

To update plugins on GNU/Linux:

	cd ~/.vim
	git submodule foreach 'git fetch origin --tags; git checkout master; git pull'
	git submodule update --init --recursive
