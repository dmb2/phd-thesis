.PHONY: all paper clean


all: thesis.pdf thesis.bib

%.pdf: paper-config.el %.org *.org
	/usr/bin/emacs $*.org --load $< --batch -f org-latex-export-to-pdf --kill
clean:
	-rm *-blx.bib *.run.xml 
dist-clean:
	-rm *.pdf *-blx.bib *.run.xml 
