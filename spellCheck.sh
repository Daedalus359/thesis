#!/bin/bash

echo "Checking Spelling"

OPTIONS="--home-dir=. --mode=tex -c --ignore-case --personal=jargon.txt"

echo "Chapter 1 Spelling"
aspell $OPTIONS 1_Introduction.tex

echo "Chapter 2 Spelling"
aspell $OPTIONS 2_Simulation_Development.tex

echo "Spell check complete."