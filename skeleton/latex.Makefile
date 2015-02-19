.PHONY: clean clean-all

%.pdf: %.tex
	rubber -q -s -f --pdf $<

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav

clean-all:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav *.dvi *.ps *.pdf
