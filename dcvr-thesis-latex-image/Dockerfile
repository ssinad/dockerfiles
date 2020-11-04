FROM pandoc/alpine-latex:2.11.0.4

RUN tlmgr install latexmk import appendix bbm \
	biblatex biblatex-ieee biblatex-apa biber units \
	bbm-macros algorithmicx algorithms soul tracklang \
	extarrows subfiles zref cleveref texliveonfly \
	tabulary multirow enumitem csquotes pgfplots \
	xmpincl glossaries glossaries-extra mfirstuc \
	xfor datatool todonotes placeins cancel pdfx 

ENTRYPOINT ["/bin/sh","-c"]
