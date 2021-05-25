FROM python:3.8.7-alpine3.12

ENV PATH=$PATH:/root/texlive/bin/x86_64-linuxmusl

COPY texlive.profile .

RUN     apk add --no-cache wget perl tar openjdk11-jre \
    &&  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    &&  tar --strip-components=1 -xzvf install-tl-unx.tar.gz \
    &&  ./install-tl --profile=texlive.profile \
    &&  tlmgr update --self \
    &&  tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel everysel \
    &&  tlmgr update --self

ENTRYPOINT []
