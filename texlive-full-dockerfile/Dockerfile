FROM  python:3.9.0-alpine3.12

ENV PATH=/usr/local/texlive/bin/x86_64-linuxmusl:$PATH

RUN mkdir -p /tmp/install-tl-unx

WORKDIR /tmp/install-tl-unx

COPY texlive.profile .

RUN apk --no-cache add perl wget xz tar curl && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
	tar --strip-components=1 -xvf install-tl-unx.tar.gz && \
    ./install-tl --profile=texlive.profile

