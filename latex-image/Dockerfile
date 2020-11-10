FROM pandoc/alpine-latex:2.11.0.4

RUN apk add --no-cache python3 py3-pip

RUN tlmgr install latexmk texliveonfly

RUN tlmgr install biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

ENTRYPOINT ["/bin/sh","-c"]
