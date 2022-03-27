FROM texlive/texlive:latest

WORKDIR /code

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y install \
    build-essential \
    git-all

RUN apt-get -y update && apt-get -y install \
    latexmk

