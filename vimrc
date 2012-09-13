call pathogen#infect()
call pathogen#helptags()

set nocompatible
set modeline

set showmode
set ruler
set bg=dark
syntax on

set hlsearch
set incsearch
set nowrapscan

set history=50
set encoding=utf-8
set backspace=indent,eol,start

set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab
set textwidth=72

filetype plugin indent on
set autoindent

set hidden
au BufRead,BufNewFile *.py,*pyw set ts=8 sts=4 sw=4
au BufRead,BufNewFile *.py,*pyw set expandtab
au BufRead,BufNewFile *.py,*pyw set textwidth=79
if exists('+colorcolumn')
    au BufRead,BufNewFile *.py,*pyw set colorcolumn=+1
endif
au BufRead,BufNewFile *.py,*pyw set number
au BufRead,BufNewFile *.py,*pyw highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*pyw match BadWhitespace /^\s\+$/
au BufRead,BufNewFile *.py,*pyw set foldmethod=indent
au BufRead,BufNewFile *.py,*pyw set foldlevel=99
au BufNewFile *.py 0r ~/.vim/skeleton/python.py

let mapleader = ','
