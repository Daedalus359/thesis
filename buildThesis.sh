#!/bin/bash

echo "Building PDF"

pdflatex --shell-escape Variable_Scrutiny_Robotic_Coverage.tex

if biber Variable_Scrutiny_Robotic_Coverage; then
	pdflatex --shell-escape Variable_Scrutiny_Robotic_Coverage.tex
	pdflatex --shell-escape Variable_Scrutiny_Robotic_Coverage.tex; else
	echo "Build Failed at biber"
fi