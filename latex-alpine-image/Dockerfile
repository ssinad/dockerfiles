FROM pandoc/alpine-latex:2.11.1.1

RUN apk add --no-cache --update python3

RUN tlmgr install latexmk texliveonfly

RUN tlmgr install biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

ENTRYPOINT []
