CV = $(shell find cv -name '*.tex')
CV_ENG = $(shell find cv_eng -name '*.tex')

.PHONY : all
.DEFAULT_GOAL := all
all : cv_short cv_eng cv

cv_short: cv_short.tex $(CV)
	latexmk -xelatex cv_short.tex

cv_eng: cv_eng.tex $(CV_ENG)
	latexmk -xelatex cv_eng.tex

cv: cv.tex $(CV)
	latexmk -xelatex cv.tex
