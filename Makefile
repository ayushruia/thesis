TEX_COMPILER=pdflatex
BIB_COMPILER=bibtex

TARGET=tamuthesis
REF_DB=references.bib
VPATH=./figures

SRC=$(wildcard *.tex)

#all:$(TARGET).bbl
#	$(TEX_COMPILER) $(TARGET).tex

#$(TARGET).bbl: $(TEX_COMPILER) $(TARGET).tex
	

all: $(TARGET).bbl
	$(TEX_COMPILER) $(TARGET).tex

$(TARGET).bbl: $(REF_DB) $(SRC)
	$(TEX_COMPILER) $(TARGET).tex
	$(BIB_COMPILER) $(TARGET)

clean:
	@rm -f *.log
	@rm -f *.aux
	@rm -f *.pdf
	@rm -f *.bbl
	@rm -f *.blg
