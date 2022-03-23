FROM ubuntu:20.04

WORKDIR /code

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y install \
    build-essential \
    git-all

RUN apt-get -y update && apt-get -y install \
    texlive-latex-extra \
    latexmk

