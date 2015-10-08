setlocal ts=4 sts=4 sw=4 noet
setlocal tw=80
setlocal colorcolumn=+1
setlocal number
setlocal foldmethod=syntax
setlocal foldlevel=99
setlocal foldcolumn=1
setlocal omnifunc=ccomplete#Complete

if exists("g:c_linux_kernel")
    setlocal ts=8 sts=8 sw=8 noet
endif
