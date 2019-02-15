"begin of vim-plug-------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
    " General plugins
    Plug '/usr/bin/fzf'
    Plug 'junegunn/fzf.vim'
    " Ctrlp como alternativa a fzf si no esta disponible:
    "Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'myusuf3/numbers.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'joshdick/onedark.vim'
    " Programming plugins
    Plug 'tpope/vim-fugitive'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
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

" How to configure true color and avoid problems with different terminals?
" this guide may be useful to configure true color:
" - http://homeonrails.com/2016/05/truecolro-in-gnome-terminal-tmux-and-neovim
" The documentation of the onedark color scheme is also worth reading:
" - https://github.com/joshdick/onedark.vim
" 
" The problem is that today is not clear how to notify to the applications
" that the current terminals supports True color. One proposal would be
" to define new TERM variables such as xterm-24bit or xterm-truecolor. 
" Other terminals began to introduce a variable called TERMCOLOR to
" indicate that the terminal supports true color. Moreover, tmux from 
" version 2.2 supports true color also.
"
" So, my proposal is to use an environmente variable COLORTERM which must 
" be set by every terminal with support of true color. I don't check if it 
" is also in a tmux session because I always use tmux >= 2.2.

" neovim/vim supports true color 24 bits?
if (has("termguicolors"))
    " the terminal suppports true color 24 bits?
    " I don't verify tmux version, because I consider it is >= 2.2
    if ($COLORTERM == "truecolor" || $COLORTERM == "24bit")
	set termguicolors
    else
	let g:onedark_termcolors=256
    endif
else
    let g:onedark_termcolors=256
endif

syntax on
colorscheme onedark
let g:airline_theme='onedark'
" colors for special characters of 'set list!'
highlight NonText guifg=#666666
highlight SpecialKey guifg=#666666

"
" Configuration of plugins
"
" a bit annoying to have a description in the preview window for every selection
" in ommicompletion, remove preview
set completeopt-=preview
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"
" Configuration of neovim/vim
"
set hidden
set number
set ts=8 sts=4 sw=4 tw=79

"
" Configuration of mappings to have a Spacemacs-like behaviour
"
" Map leader
let mapleader = "\<Space>"
" Map of vim configuration and usage
nnoremap <leader>ve :tabedit ~/.config/nvim/init.vim<CR>:cd ~/.config/nvim<CR>
nnoremap <leader>vs :source ~/.config/nvim/init.vim<CR>
" Map of file commands
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :Files<CR>
" Ctrlp como alternativa a fzf si no esta disponible:
"nnoremap <leader>ff :CtrlP<CR>
"nnoremap <leader>fr :CtrlPMRU<CR>
nnoremap <leader>fw :w<CR>
" Map of buffer commands
nnoremap <leader>bb :Buffers<CR>
" Ctrlp como alternativa a fzf si no esta disponible:
"nnoremap <leader>bb :CtrlPBuffer<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>
" show invisible characters of the buffer:
nnoremap <leader>bi :setlocal list!<CR>
" Map of tab commands
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>td :tabclose<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tN :tabNext<CR>
nnoremap <leader>tp :tabprevious<CR>
" Map of window commands
nnoremap <leader>w <c-w>
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
" Map of git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gp :Gpush<CR>
" Map for completion and for nerdcommenter (default mappings of nerdcommenter
nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yd :YcmCompleter GetDoc<CR>

"
" Configuration of plugins
"
set completeopt-=preview
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
