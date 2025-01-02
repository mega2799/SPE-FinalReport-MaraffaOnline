#!/usr/env/bin bash

#pandoc  -s --highlight-style kate --toc -c latex2html.css  report/main.tex  -o index.html
curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/copy_templates.sh' | bash
pandoc  -s --highlight-style kate --toc --template easy_template.html report/main.tex --metadata-file=metadata.yaml  -o index.html
#pandoc -s --highlight-style kate --toc --self-contained -c enhanced.css report/main.tex -o index.html

latexmk -pdf report/main.tex
