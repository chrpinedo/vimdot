.PHONY: clean clean-all

%.pdf: %.tex
	rubber -f --pdf -s $<
	rubber-info --check $<

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav

clean-all:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav *.pdf
