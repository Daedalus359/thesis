#!/bin/bash

echo "Checking Spelling"

OPTIONS="--home-dir=. --mode=tex -c --ignore-case --personal=jargon.txt"

echo "Chapter 1"
aspell $OPTIONS 1_Introduction.tex

echo "Chapter 2"
aspell $OPTIONS 2_Simulation_Development.tex

echo "Chapter 3"
aspell $OPTIONS 3_Simple_Coverage_Policies.tex

echo "Chapter 4"
aspell $OPTIONS 4_Intelligent_Coverage_Policies.tex

echo "Chapter 5"
aspell $OPTIONS 5_Conclusion.tex

echo "Other TeX Files"
aspell $OPTIONS 0_FrontMatter.tex

echo "Spell check complete."