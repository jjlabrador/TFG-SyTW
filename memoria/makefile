all:
	latex memtfg.tex
	latex memtfg.tex
	bibtex memtfg
	latex memtfg.tex
	latex memtfg.tex
	dvips -o memtfg.ps memtfg.dvi
	ps2pdf -sPAPERSIZE=a4 -DMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true memtfg.ps memtfg.pdf

clean:
	rm -f *.toc *.ps *.log *.lof *.lot *.dvi *.aux *.blg *.bbl
