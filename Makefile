PDFS=manual.pdf lncs.pdf report.pdf
OUTS=$(PDFS:.pdf=.out)
AUXS=$(PDFS:.pdf=.aux)
LOGS=$(PDFS:.pdf=.log)

.PHONY: all clean cleanall

all: $(PDFS)

clean:
	$(RM) $(PDFS) $(OUTS) $(AUXS) $(LOGS)

cleanall: clean
	$(RM) *~

%.pdf: %.tex content.tex example.tex example1.tex example2.tex props.tex
	pdflatex $^
	pdflatex $^
