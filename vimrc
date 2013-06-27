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
" Basic Formating text
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
vmap <c-h> g0
vmap <c-j> gj
vmap <c-k> gk
vmap <c-l> g$
nmap <c-h> g0
nmap <c-j> gj
nmap <c-k> gk
nmap <c-l> g$
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

	" Configuration for specific filetypes
	autocmd FileType mail call FT_mail()
	autocmd BufNewFile *.tex 0r ~/.vim/skeleton/latex.tex
	autocmd FileType tex call FT_tex()
	autocmd BufNewFile,BufRead *.py,*.pyc setfiletype python
	autocmd BufNewFile *.py 0r ~/.vim/skeleton/python.py
	autocmd FileType python call FT_python()

	" Autoclose preview window of omnicompletion
	autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
	autocmd InsertLeave * if pumvisible() == 0|pclose|endif
endif

function! FT_mail()
	setlocal fileencodings=latin1,iso-8859-15,utf-8
	setlocal ts=4 sts=4 sw=4 noet
	setlocal tw=72
	setlocal spell spelllang=es
endfunction

function! FT_tex()
	setlocal ts=2 sts=2 sw=2 noet
	setlocal tw=79
endfunction

function! FT_python()
	setlocal ts=4 sts=4 sw=4 et
	setlocal tw=79
	if exists('+colorcolumn')
		setlocal colorcolumn=+1
	endif
	setlocal number
	highlight BadWhitespace ctermbg=red guibg=red
	match BadWhitespace /^\t\+/
	match BadWhitespace /^\s\+$/
	setlocal foldmethod=indent
	setlocal foldlevel=99
	if filereadable("~/.vim/tags/python/python2.7")
		setlocal tags+=~/.vim/tags/python/python2.7
	endif
	setlocal omnifunc=pythoncomplete#Complete
endfunction
