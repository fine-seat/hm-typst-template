ROOT := ..

PDFS := thesis.pdf modularbeit.pdf hauptseminar.pdf

.PHONY: all examples

all: examples

examples: $(PDFS)

thesis.pdf:
	typst compile thesis.typ --root $(ROOT) $< $@

modularbeit.pdf:
	typst compile modularbeit.typ --root $(ROOT) $< $@

hauptseminar.pdf:
	typst compile hauptseminar.typ --root $(ROOT) $< $@
