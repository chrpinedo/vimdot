" my filetype file
if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	" bad associations
	au BufRead,BufNewFile *.md set filetype=markdown
	au BufRead,BufNewFile *.tex set filetype=tex
	" skeleton for new files
	au BufNewFile *.tex 0r ~/.vim/skeleton/latex.tex
augroup END
