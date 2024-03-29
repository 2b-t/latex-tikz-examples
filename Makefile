# Makefile
# Tobit Flatscher - github.com/2b-t (2022)

# Define sub-directories and files
SRCDIR = src
BUILDDIR = build

SOURCES = $(wildcard $(SRCDIR)/*.tex)

.PHONY: all clean

all:
	@mkdir -p $(BUILDDIR)
	@for i in $(SOURCES); do \
		latexmk -quiet -pdf -pdflatex="pdflatex -interaction=nonstopmode" -output-directory="build" -use-make $$i; \
	done

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@

clean:
	latexmk -CA -output-directory="build" $(SOURCES)
