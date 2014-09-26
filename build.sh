#!/bin/sh

asciidoc --theme=flask -b docbook45 -a newline='\n' g2k14inside.adoc
asciidoc --theme=flask -b html -a newline='\n' -a disable-javascript g2k14inside.adoc

dblatex -b xetex -t pdf -P latex.output.revhistory=0 -p "/etc/asciidoc/dblatex/asciidoc-dblatex.xsl" -s "/etc/asciidoc/dblatex/asciidoc-dblatex.sty" g2k14inside.xml
