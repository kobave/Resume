AUX_FILE_DIR := tmp
TEX_FILE_DIR := ../tex
OUT_FILE_DIR := ../

OUT_FILE_NAME := chandrikaCV
OUT_FILE_EXT := pdf

TEX := pdflatex
# pdflatex needs to run multiple times to ensure toc, references, etc. are generated correctly
# A toc file, for example, will be generated during the first invocation
# That file will be used the second time to insert toc into the document
NUM_TEX_INVOCATIONS := 2

define TEXOPTS
	-aux-directory=$(AUX_FILE_DIR)\
	-enable-installer\
	-include-directory=$(TEX_FILE_DIR)\
	-job-name=$(OUT_FILE_NAME)\
	-interaction=nonstopmode\
	-output-directory=$(OUT_FILE_DIR)\
	-quiet\
	-synctex=0
endef

.DEFAULT_GOAL := all