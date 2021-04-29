FROM python:3.8.7-alpine3.12

RUN	    python3 -m pip install --upgrade google-api-python-client==1.12.5 google-auth-httplib2==0.0.4 google-auth-oauthlib==0.4.2 \
    &&   apk add --no-cache curl bash

COPY gdrive-update /usr/local/bin

ENTRYPOINT [ "gdrive-update" ]