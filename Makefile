LATEXMK = latexmk
LATEXMKOPTIONS = -pdf -pdflatex=lualatex --shell-escape --enable-pipes

MAIN = main

$(MAIN).pdf: $(wildcard *.tex) Makefile
	$(LATEXMK) $(LATEXMKOPTIONS) $(MAIN).tex

.PHONY: clean
clean:
	$(LATEXMK) -c $(MAIN).tex
