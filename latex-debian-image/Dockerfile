FROM python:3.9.0-slim-buster

COPY texlive.profile .

RUN apt-get update && apt get install -y wget tar \
    && wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && tar --strip-components=1 -xvf install-tl-unx.tar.gz \
    && ./install-tl --profile=texlive.profile

# RUN apt-get update \
#     && apt-get install texlive-base -y

# RUN tlmgr init-usertree 

# RUN tlmgr option repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final

RUN tlmgr install latexmk texliveonfly

RUN tlmgr install biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel 

