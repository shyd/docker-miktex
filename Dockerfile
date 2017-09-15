FROM miktex/miktex

RUN apt-get update && \
    apt-get -y install git curl

RUN rm -rf /var/lib/apt/lists/*
