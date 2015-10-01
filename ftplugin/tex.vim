"I prefer autoindent
filetype indent off
setlocal autoindent
"Large lines. One line per sentence.
setlocal tw=0 wrap linebreak
"Print line number and no linebreaks
setlocal number
setlocal showbreak=
"Compile LaTeX with a Makefil
setlocal errorformat+=%f:%l:\ %m
setlocal makeprg=make
