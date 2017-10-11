FROM miktex/miktex

USER root

RUN apt-get update && \
    apt-get -y install git curl

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /miktex/libraries
COPY libraries /miktex/libraries

RUN initexmf --admin --user-roots=/miktex/libraries
RUN initexmf --admin --update-fndb

USER miktex
