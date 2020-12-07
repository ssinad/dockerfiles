FROM  debian:buster-20201117-slim

RUN apt-get update \
    && apt-get install texlive-base -y

RUN tlmgr init-usertree

RUN tlmgr install --force latexmk texliveonfly

RUN tlmgr install --force biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

