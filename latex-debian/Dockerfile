FROM openjdk:11.0.11-jre-buster

ENV PATH=$PATH:/root/texlive/bin/x86_64-linux

WORKDIR /tmp

COPY texlive.profile ./

RUN     apt-get update && apt-get install -y wget tar perl-tk software-properties-common \
    &&  add-apt-repository ppa:deadsnakes/ppa \ 
    &&  apt-get update \ 
    &&  apt-get install -y python3.8-minimal \
    && ln -s /usr/bin/python3.8 /usr/bin/python \
    &&  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    &&  tar --strip-components=1 -xzvf install-tl-unx.tar.gz \
    &&  ./install-tl --profile=texlive.profile \
    &&  tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel everysel

WORKDIR /root

ENTRYPOINT []