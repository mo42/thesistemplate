LATEX = pdflatex
BIBER = biber
MAIN = main

$(MAIN).pdf $(MAIN).bcf: $(MAIN).tex $(MAIN).bbl
	$(LATEX) $(MAIN).tex

$(MAIN).bbl: $(MAIN).bcf
	$(BIBER) $(MAIN)

$(MAIN).bcf: $(MAIN).tex
	$(LATEX) $(MAIN).tex

.PHONY: clean
clean:
	rm -f $(MAIN).aux
	rm -r $(MAIN).bcf
	rm -r $(MAIN).idx
	rm -r $(MAIN).loa
	rm -r $(MAIN).lof
	rm -r $(MAIN).log
	rm -r $(MAIN).lot
	rm -r $(MAIN).out
	rm -r $(MAIN).run.xml
	rm -r $(MAIN).toc
