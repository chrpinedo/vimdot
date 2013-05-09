execute pathogen#infect()

set modeline

set nocompatible
set laststatus=2
set encoding=utf-8
if (&term =~ "xterm") || (&term =~ "screen")
	set t_Co=256
endif

set bg=dark
syntax on

set hlsearch
set incsearch
set nowrapscan

set history=50
set backspace=indent,eol,start

set hidden

"
" Formating text
"
set ts=4 sts=4 sw=4 noet
set tw=79
set ai
if executable("par")
	set formatprg=par\ -w79
endif
"
" Generic Mappings
"
let mapleader = ','
" Map easy access to vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>
" Map to show invisible characters:
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
" Maps to easily open new files in subdirectories:
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
" Maps to surfing splitted lines
vmap <c-h> h
vmap <c-j> gj
vmap <c-k> gk
vmap <c-l> l
vmap <c-p> g$
vmap <c-u> g0
nmap <c-h> h
nmap <c-j> gj
nmap <c-k> gk
nmap <c-l> l
nmap <c-p> g$
nmap <c-u> g0
set showbreak=...
" Maps of plugins
" Map TaskList plugin to ,p (pending) to not interfere with Command-T plugin
nmap <leader>p <Plug>TaskList
" Map Gundo plugin
nnoremap <F5> :GundoToggle<CR>

"
" Filetype dependant configuration:
"
if has("autocmd")
	" Enable filetype detection
	filetype plugin indent on

	" Configuration for vimrc file
	autocmd bufwritepost .vimrc source $MYVIMRC

	" Consider *.py and *.pyc files python files
	autocmd BufNewFile,BufRead *.py,*.pyc setfiletype python

	" Configuration for python files
	autocmd FileType python setlocal ts=8 sts=4 sw=4 et
	autocmd FileType python setlocal tw=79
	if exists('+colorcolumn')
		autocmd FileType python setlocal colorcolumn=+1
	endif
	autocmd FileType python setlocal number
	autocmd FileType python highlight BadWhitespace ctermbg=red guibg=red
	autocmd FileType python match BadWhitespace /^\t\+/
	autocmd FileType python match BadWhitespace /^\s\+$/
	autocmd FileType python setlocal foldmethod=indent
	autocmd FileType python setlocal foldlevel=99
	if filereadable("~/.vim/tags/python/python2.7")
		autocmd FileTYpe python setlocal tags+=~/.vim/tags/python/python2.7
	endif
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd BufNewFile *.py 0r ~/.vim/skeleton/python.py
	
	" Configuration for latex files
	autocmd FileType tex	setlocal encoding=utf-8
	autocmd FileType tex	setlocal ts=8 sts=2 sw=2 et
	autocmd FileType tex	setlocal tw=79
	autocmd BufNewFile *.tex 0r ~/.vim/skeleton/latex.tex

	" Autoclose preview window of omnicompletion
	autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
	autocmd InsertLeave * if pumvisible() == 0|pclose|endif
endif
