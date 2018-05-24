#!/bin/bash
FILENAME=$1
pdflatex -file-line-error -shell-escape "\\PassOptionsToClass{tikzexport}{ximera}\\PassOptionsToClass{xake}{ximera}\\PassOptionsToClass{xake}{xourse}\\nonstopmode\\input{$FILENAME}"
pdflatex -file-line-error -shell-escape "\\PassOptionsToClass{tikzexport}{ximera}\\PassOptionsToClass{xake}{ximera}\\PassOptionsToClass{xake}{xourse}\\nonstopmode\\input{$FILENAME}"
htlatex $FILENAME "ximera,charset=utf-8,-css" " -cunihtf -utf8" "" "--interaction=nonstopmode -shell-escape -file-line-error"
