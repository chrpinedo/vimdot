"NeoBundle Scripts-----------------------------
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" General plugins
NeoBundle 'kien/ctrlp.vim', {'directory' : 'ctrlp'}
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sjl/gundo.vim', {'directory' : 'gundo'}
NeoBundle 'bling/vim-airline', {'directory' : 'airline'}
" Git plugins
NeoBundle 'tpope/vim-fugitive', {'directory' : 'fugitive'}
" Text plugins
NeoBundle 'godlygeek/tabular'
" Programming plugins
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/TaskList.vim', {'directory' : 'tasklist'}
" Other plugins to consider: snipmate, pydoc, easytags, ... 

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"
" Generic configuration
"

set encoding=utf-8

colorscheme desert
if (&term =~ "xterm") || (&term =~ "screen")
	set t_Co=256
endif
syntax on

set hlsearch incsearch nowrapscan
set backspace=indent,eol,start
set hidden

set ts=4 sts=4 sw=4 noet tw=80 ai
if executable("par")
	set formatprg=par\ -w80
endif

" Map leader
let mapleader = ','
" Map easy access to vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>
" Map to show invisible characters:
nmap <leader>i :set list!<CR>
set listchars=tab:▸\ ,eol:¬
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
" Configuration for airline plugin
set laststatus=2
" Generic mappings to plugins
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F7> :GundoToggle<CR>

"
" Configuration autocmd
"

" apply vim new configuration
au bufwritepost .vimrc source $MYVIMRC

" skeleton for new files
au BufNewFile *.tex 0r ~/.vim/skeleton/latex.tex
au BufNewFile *.py 0r ~/.vim/skeleton/python.py

" bad associations
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.tex set filetype=tex
