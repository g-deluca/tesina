TEX_FILES = $(wildcard *.tex)
EXT = *.nav *.snm *.ptb *.blg *.log *.aux *.lof *.lot *.bit *.idx *.glo *.bbl *.ilg *.toc *.out *.ind *~ *.ml* *.mt* *.th* *.bmt *.xyc *.bcf *.run.xml *.dot *.ptc *.fls *.fdb_latexmk

.PHONY: all clean

all: slides clean

clean:
	$(RM) $(EXT)

slides: $(TEX_FILES)
	pdflatex -halt-on-error slides.tex
