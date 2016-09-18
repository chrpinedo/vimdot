"begin of vim-plug-------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
    " General plugins
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Programming plugins
    Plug 'tpope/vim-fugitive'
    Plug 'neomake/neomake'
    Plug 'Valloric/YouCompleteMe'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " Specific defaults for vim
    if !has('nvim')
	Plug 'noahfrederick/vim-neovim-defaults'
    endif
call plug#end()
"end of vim-plug---------------------------------------------------------------

"
" Default configuration
"
colorscheme delek

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

let g:ctrlp_by_filename = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Generic mappings to plugins
nnoremap <F5> :NERDTreeToggle<CR>

"
" Configuration autocmd
"

" apply vim new configuration
au bufwritepost .vimrc source $MYVIMRC
