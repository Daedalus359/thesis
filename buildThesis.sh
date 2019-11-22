#!/bin/bash

echo "Building PDF"

pdflatex --shell-escape Online_Planning_for_Robotic_Coverage.tex

if biber Online_Planning_for_Robotic_Coverage; then
	pdflatex --shell-escape Online_Planning_for_Robotic_Coverage.tex 
	pdflatex --shell-escape Online_Planning_for_Robotic_Coverage.tex; else
	echo "Build Failed at biber"
fi