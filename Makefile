TEX_FILES = $(wildcard *.tex)

.PHONY: all clean

all: main.pdf

clean:
	$(RM) main.pdf

main.pdf: $(TEX_FILES)
	pdflatex -halt-on-error main.tex
	biber main.bcf
	pdflatex -halt-on-error main.tex
	pdflatex -halt-on-error main.tex
	$(RM) main.aux main.log main.out main.toc
