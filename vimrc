"begin of vim-plug-------------------------------------------------------------
call plug#begin('~/.vim/plugged')
" General plugins
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'bling/vim-airline'
" Git plugins
Plug 'tpope/vim-fugitive'
" Text plugins
Plug 'godlygeek/tabular'
" Programming plugins
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/TaskList.vim'
Plug 'scrooloose/syntastic'
" Other plugins to consider: snipmate, pydoc, easytags, ... 
call plug#end()
"end of vim-plug---------------------------------------------------------------

"
" Configure vim with nvim default configuration
" nvim version 0.1.2-dev
"
if !has('nvim')
    set autoindent
    set autoread
    set backspace="indent,eol,start"
    set complete-=i
    set display=lastline
    set encoding=utf-8
    set formatoptions="tcqj"
    set history=10000
    set hlsearch
    set incsearch
    set langnoremap
    set laststatus=2
    set listchars="tab:> ,trail:-,nbsp:+"
    set mouse=a
    set nocompatible
    set nrformats=hex
    set sessionoptions-=options
    set smarttab
    set tabpagemax=50
    set tags="./tags;,tags"
    set ttyfast
    set viminfo+=!
    set wildmenu
endif

"
" Generic configuration
"
colorscheme desert
syntax on
set nowrapscan
set hidden

set ts=8 sts=4 sw=4 tw=80
if executable("par")
	set formatprg=par\ -w80
endif

" Map leader
let mapleader = ','
" Map easy access to vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>
" Map to show invisible characters:
nmap <leader>i :set list!<CR>
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
" Maps to surfing splitted lines
vmap <c-h> g0
vmap <c-j> gj
vmap <c-k> gk
vmap <c-l> g$
nmap <c-h> g0
nmap <c-j> gj
nmap <c-k> gk
nmap <c-l> g$
set showbreak=>\ 

"
" Generic configuration of plugins
"

" Configuration of ctrlp plugin
let g:ctrlp_by_filename = 1
" Generic mappings to plugins
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F7> :GundoToggle<CR>

"
" Configuration autocmd
"

" apply vim new configuration
au bufwritepost .vimrc source $MYVIMRC
