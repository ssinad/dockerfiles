FROM python:3.8.7-slim-buster

RUN apt-get update && apt-get install -y git \
    && python3 -m pip install git-filter-repo

ENTRYPOINT [ "git", "filter-repo" ]