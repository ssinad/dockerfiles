FROM pandoc/ubuntu-latex:2.11.1.1

RUN     apt-get update \ 
    &&  apt-get install -y software-properties-common \
    &&  add-apt-repository ppa:deadsnakes/ppa \ 
    &&  apt-get update \ 
    &&  apt-get install -y python3.9-minimal \
    &&  tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

ENTRYPOINT []
