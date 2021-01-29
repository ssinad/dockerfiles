FROM ubuntu:focal-20201106

ENV PATH=$PATH:/usr/local/texlive/bin/x86_64-linux \
    TZ=Canada/Mountain

RUN     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \ 
    &&  apt-get update \ 
    &&  apt-get install -y perl-tk software-properties-common \
    &&  add-apt-repository ppa:deadsnakes/ppa \ 
    &&  apt-get update \ 
    &&  apt-get install -y python3.8-minimal \
    &&  apt-get update \
    &&  apt-get install texlive-full -y

ENTRYPOINT []