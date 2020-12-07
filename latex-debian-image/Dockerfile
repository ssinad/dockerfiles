FROM  debian:buster-20201117-slim

RUN apt-get update \
    && apt-get install texlive-base -y

RUN tlmgr init-usertree 

RUN tlmgr option repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final

RUN tlmgr install latexmk texliveonfly --repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final

RUN tlmgr install biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel --repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final

