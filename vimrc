"begin of vim-plug-------------------------------------------------------------
call plug#begin('~/.vim/plugged')
" General plugins
if !has('nvim')
    Plug 'noahfrederick/vim-neovim-defaults'
endif
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
Plug 'neomake/neomake'
if has('nvim')
    Plug 'Shougo/deoplete.nvim'
endif
" Other plugins to consider: snipmate, pydoc, easytags, ... 
call plug#end()
"end of vim-plug---------------------------------------------------------------

"
" Generic configuration
"
colorscheme desert
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
