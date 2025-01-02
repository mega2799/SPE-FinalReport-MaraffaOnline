#!/usr/env/bin bash

#pandoc  -s --highlight-style kate --toc -c latex2html.css  report/main.tex  -o index.html
pandoc -s --highlight-style kate --toc --self-contained -c enhanced.css report/main.tex -o index.html

latexmk -pdf report/main.tex
