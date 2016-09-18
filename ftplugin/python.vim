setlocal ts=4 sts=4 sw=4 et
setlocal tw=80
setlocal colorcolumn=+1
setlocal number
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /^\s\+$/
setlocal foldmethod=indent
setlocal foldlevel=99
setlocal foldcolumn=1
"if filereadable("~/.vim/tags/python/python2.7")
"	setlocal tags+=~/.vim/tags/python/python2.7
"endif
"setlocal omnifunc=pythoncomplete#Complete
