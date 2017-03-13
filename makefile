SRC = $(wildcard *.tex)

PDFS = $(SRC:.tex=.pdf)

sourceFile=resume
#sourceFile=resumeZh

all: compile view

spellCheck:resume.tex
	aspell -t -c resume.tex

saveOutside:
	cp resume.pdf  ~/findingWork/Junhao_Lin_Resume.pdf
	cp resumeZh.pdf  ~/findingWork/中山大学-林俊浩-简历.pdf

.PHONY: edit view saveOutside
edit: 
	vim $(sourceFile).tex

compile: resume.tex
	#xelatex $(sourceFile).tex > /dev/null
	xelatex $(sourceFile).tex 

view: resume.pdf
	evince $(sourceFile).pdf
	

old: clean pdf

en:	clean xelatex resume.tex

zh_CN:	clean xelatex resume-zh_CN.tex

pdf:	clean $(PDFS)

%.pdf:  %.tex
	xelatex $<

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind 
