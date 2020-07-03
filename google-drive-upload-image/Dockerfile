FROM python:rc-alpine

RUN	apk --no-cache add wget xz tar curl bash &&\
	pip3 install --upgrade google-api-python-client

COPY gdrive-update.py /usr/local/lib/python3.9
