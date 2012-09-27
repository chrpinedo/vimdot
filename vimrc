call pathogen#infect()
call pathogen#helptags()

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

set ts=4 sts=4 sw=4 noet
set tw=79
set ai

set hidden
"
" Generic Mappings
"
let mapleader = ','
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
"
" Filetype dependant configuration:
"
if has("autocmd")
	" Enable filetype detection
	filetype plugin indent on

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
	autocmd FileTYpe python setlocal tags=~/.vim/tags/python/python2.7
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd BufNewFile *.py 0r ~/.vim/skeleton/python.py
endif
