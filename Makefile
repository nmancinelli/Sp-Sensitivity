clean:
	rm -f *.dvi
	rm -f *.fls
	rm -f *_latexmk
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.pdf
	rm -f img/*-eps-*.pdf
	rm *diff.tex

diff.pdf:
	latexdiffcite git main.tex 29e7717
	pdflatex diff
	bibtex diff
	latexdiff main.bbl diff.bbl > tmp.bbl
	mv tmp.bbl diff.bbl
	pdflatex diff
	pdflatex diff  