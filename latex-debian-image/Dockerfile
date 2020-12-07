FROM  debian:buster-20201117-slim

RUN apt-get update \
    && apt-get install texlive-base -y

RUN tlmgr install latexmk texliveonfly

RUN tlmgr install biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

