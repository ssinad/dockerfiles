FROM ubuntu:focal-20201106

ENV PATH=$PATH:/usr/local/texlive/bin/x86_64-linux \
    TZ=Canada/Mountain

COPY texlive.profile .

RUN     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \ 
    &&  apt-get update \ 
    &&  apt-get install -y wget tar perl-tk software-properties-common \
    &&  add-apt-repository ppa:deadsnakes/ppa \ 
    &&  apt-get update \ 
    &&  apt-get install -y python3.8-minimal \
    &&  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    &&  tar --strip-components=1 -xzvf install-tl-unx.tar.gz \
    &&  ./install-tl --profile=texlive.profile \
    &&  tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel

ENTRYPOINT []
