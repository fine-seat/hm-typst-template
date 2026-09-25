ROOT := ..

PDFS := thesis.pdf modularbeit.pdf

.PHONY: all examples

all: examples

examples: $(PDFS)

thesis.pdf:
	typst compile thesis.typ --root $(ROOT) $< $@

modularbeit.pdf:
	typst compile modularbeit.typ --root $(ROOT) $< $@
