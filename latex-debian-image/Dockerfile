FROM  debian:buster-20201117-slim

RUN apt-get update \
    && apt-get install texlive-base -y

RUN tlmgr init-usertree && tlmgr option repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final

RUN tlmgr install --force latexmk texliveonfly

RUN tlmgr install --force biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

