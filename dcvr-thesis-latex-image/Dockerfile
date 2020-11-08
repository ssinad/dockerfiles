FROM pandoc/alpine-latex:2.11.0.4

RUN apk add --no-cache python3 py3-pip

RUN tlmgr install latexmk texliveonfly

# RUN tlmgr install import bbm biblatex biblatex-ieee biblatex-apa biber bbm-macros algorithmicx algorithms soul tracklang extarrows subfiles zref cleveref appendix units tabulary multirow enumitem csquotes pgfplots xmpincl glossaries glossaries-extra mfirstuc xfor datatool todonotes placeins cancel pdfx 

ENTRYPOINT ["/bin/sh","-c"]
