# Makefile
# Tobit Flatscher - github.com/2b-t (2022)

# Define sub-directories and files
SRCDIR = src
BUILDDIR = build

SOURCES = $(wildcard ../$(SRCDIR)/*.tex)

.PHONY: all clean

all:
	@mkdir -p $(BUILDDIR)
	cd $(BUILDDIR) \
	for i in $(SOURCES); do \
		latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $$i; \
	done

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@

clean:
	latexmk -CA $(SOURCES)
