FROM ubuntu:focal-20201106

ENV PATH=$PATH:/root/texlive/bin/x86_64-linux \
    TZ=Canada/Mountain

WORKDIR /tmp

COPY texlive.profile /tmp/

RUN     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \ 
    &&  apt-get update \ 
    &&  apt-get install -y wget tar perl-tk software-properties-common openjdk-11-jre \
    &&  add-apt-repository ppa:deadsnakes/ppa \ 
    &&  apt-get update \ 
    &&  apt-get install -y python3.8-minimal \
    && ln -s /usr/bin/python3.8 /usr/bin/python \
    && cd /tmp \
    &&  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    &&  tar --strip-components=1 -xzvf install-tl-unx.tar.gz \
    &&  ./install-tl --profile=texlive.profile \
    &&  tlmgr install latexmk texliveonfly biblatex biblatex-apa biblatex-ieee biblatex-nature biber babel everysel

WORKDIR /root

ENTRYPOINT []
