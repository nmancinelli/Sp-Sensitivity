diff.pdf:
	latexdiffcite git main.tex 29e7717
	pdflatex diff
	bibtex diff
	latexdiff main.bbl diff.bbl > tmp.bbl
	mv tmp.bbl diff.bbl
	pdflatex diff
	pdflatex diff  
