#!/bin/bash

echo "Checking Spelling"

aspell --mode=tex -c --ignore-case --personal jargon.txt Simulation_Development.tex

echo "Spell check complete."