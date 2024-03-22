# ============================================================================
# Makefile for dissertaciya
# © 2018 Jan Hodermarsky
# ============================================================================

ROOT_DIR:=$(realpath .)

TARGET:=диссертация


.PHONY: all build clean veryclean push

all:
	@echo "All"

build:
	@echo "... not implemented ..."

clean:
	rm -f $(TARGET).pdf

veryclean: clean
	rm -f $(TARGET).pdf

push: #veryclean
	$(MAKE) veryclean
	git add -A
	git commit -m "another commit"
	git push origin master

test:
	@echo "lel"
