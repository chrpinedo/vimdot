"begin of vim-plug-------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
    " General plugins
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'joshdick/onedark.vim'
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
" Configuration of colorscheme and airline theme
"

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  " Outside tmux
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    set termguicolors
  endif
else
  " Inside tmux (this is for a tmux version less than 2.2)
  set notermguicolors
  let g:onedark_termcolors=16
endif
colorscheme onedark
let g:airline_theme='onedark'

"
" Configuration of neovim/vim
"
set hidden

set ts=8 sts=4 sw=4 tw=80

" Map leader
let mapleader = ','
" Map easy access and modify configuration of neovim/vim
if (has("nvim"))
    nnoremap <leader>ve :tabedit ~/.config/nvim/init.vim<CR>
    nnoremap <leader>vs :source ~/.config/nvim/init.vim<CR>
else
    nnoremap <leader>ve :tabedit $MYVIMRC<CR>
    nnoremap <leader>vs :source $MYVIMRC<CR>
endif
" Map to show invisible characters:
nnoremap <leader>i :set list!<CR>
highlight NonText guifg=#666666
highlight SpecialKey guifg=#666666
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
" Configuration of plugins
"
set completeopt-=preview
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Generic mappings to plugins
nnoremap <F5> :NERDTreeToggle<CR>
