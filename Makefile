LATEXMK = latexmk
LATEXMKOPTIONS = -pdf

MAIN = main

$(MAIN).pdf: $(MAIN).tex
	$(LATEXMK) $(LATEXMKOPTIONS) $(MAIN).tex

.PHONY: clean
clean:
	$(LATEXMK) -c $(MAIN).tex
	rm -f $(MAIN).bbl
	rm -f $(MAIN).loa
	rm -f $(MAIN).run.xml
