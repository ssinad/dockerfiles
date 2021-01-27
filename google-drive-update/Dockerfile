FROM python:3.8.7-slim-buster

RUN	    python3 -m pip install --upgrade google-api-python-client==1.12.5 google-auth-httplib2==0.0.4 google-auth-oauthlib==0.4.2 \
    &&  apt-get update && apt-get -y install curl

COPY gdrive-update.py /usr/local/lib/python3.8