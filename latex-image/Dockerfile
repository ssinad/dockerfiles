FROM pandoc/ubuntu-latex:2.11.1.1

RUN apt-get update && \ 
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \ 
    apt-get update && \ 
    apt-get install -y python3.9-minimal

RUN tlmgr install latexmk texliveonfly

RUN tlmgr install biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

ENTRYPOINT []
