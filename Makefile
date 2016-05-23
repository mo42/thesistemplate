LATEX = pdflatex -interaction nonstopmode
BIBER = biber
MAIN = main
REF = references

$(MAIN).pdf: $(MAIN).tex $(MAIN).bbl $(MAIN).toc $(MAIN).lof $(MAIN).loa
	$(LATEX) $(MAIN).tex

$(MAIN).bbl: $(MAIN).bcf $(REF).bib
	$(BIBER) $(MAIN)

$(MAIN).bcf: $(MAIN).tex
	$(LATEX) $(MAIN).tex

$(MAIN).toc $(MAIN).lof $(MAIN).loa: $(MAIN).tex
	$(LATEX) $(MAIN).tex

.PHONY: clean
clean:
	rm -f $(MAIN).aux
	rm -f $(MAIN).bcf
	rm -f $(MAIN).bbl
	rm -f $(MAIN).blg
	rm -f $(MAIN).idx
	rm -f $(MAIN).loa
	rm -f $(MAIN).lof
	rm -f $(MAIN).log
	rm -f $(MAIN).lot
	rm -f $(MAIN).out
	rm -f $(MAIN).run.xml
	rm -f $(MAIN).toc

commit: clean
	rm -f main.pdf
