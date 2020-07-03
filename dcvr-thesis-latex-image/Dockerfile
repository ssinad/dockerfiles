FROM python:rc-alpine

ENV PATH=/usr/local/texlive/bin/x86_64-linuxmusl:$PATH

RUN mkdir -p /tmp/install-tl-unx

WORKDIR /tmp/install-tl-unx

COPY texlive.profile .

RUN apk --no-cache add perl wget xz tar curl bash ca-certificates && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
	tar --strip-components=1 -xvf install-tl-unx.tar.gz && \
    ./install-tl --profile=texlive.profile && \
	tlmgr install latexmk import appendix bbm \
	biblatex biblatex-ieee biblatex-apa biber units \
	bbm-macros algorithmicx algorithms soul tracklang \
	extarrows subfiles zref cleveref texliveonfly \ 
	tabulary multirow enumitem csquotes pgfplots \ 
	xmpincl glossaries glossaries-extra mfirstuc \
	xfor datatool todonotes placeins cancel &&\
	pip3 install --upgrade google-api-python-client

RUN rm -rf /tmp/install-tl-unx /tmp/*

COPY gdrive-update.py /usr/local/lib/python3.9

WORKDIR /