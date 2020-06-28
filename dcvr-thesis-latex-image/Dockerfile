FROM python:rc-alpine

ENV PATH=/usr/local/texlive/bin/x86_64-linuxmusl:$PATH

RUN mkdir -p /tmp/install-tl-unx

WORKDIR /tmp/install-tl-unx

COPY texlive.profile .

RUN apk --no-cache add perl wget xz tar curl bash ca-certificates && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
	tar --strip-components=1 -xvf install-tl-unx.tar.gz && \
    ./install-tl --profile=texlive.profile && \
	tlmgr install latexmk import appendix\
	biblatex biblatex-ieee biblatex-apa biber tracklang\
	bbm bbm-macros algorithmicx algorithms\
	extarrows subfiles zref cleveref texliveonfly\ 
	tabulary multirow enumitem csquotes\ 
	xmpincl glossaries glossaries-extra\
	mfirstuc xfor datatool todonotes placeins\
	cancel pgfplots &&\
	pip3 install --upgrade google-api-python-client

RUN rm -rf /tmp/install-tl-unx /tmp/*

COPY gdrive-update.py /

WORKDIR /