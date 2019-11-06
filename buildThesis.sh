#!/bin/bash

echo "Building PDF"

pdflatex --shell-escape Online_Planning_for_Robotic_Coverage.tex

echo "Build Complete"