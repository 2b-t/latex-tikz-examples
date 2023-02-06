FROM texlive/texlive:latest

WORKDIR /code

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get -y install \
    build-essential \
    git-all \
    latexmk \
 && rm -rf /var/lib/apt/lists/*

ARG DEBIAN_FRONTEND=dialog

