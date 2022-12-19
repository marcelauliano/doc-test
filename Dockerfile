# Base Image
FROM ubuntu:18.04

# Metadata
LABEL version="1"
LABEL software="fastaLength_1.py"

# Maintainer
MAINTAINER  Marcela mu2@sanger.ac.uk

ENV DEBIAN_FRONTEND=noninteractive


RUN 
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 --no-cache-dir install --upgrade pip \
  && pip3 install biopython \

RUN cd  /bin/ \
  && git clone https://github.com/marcelauliano/doc-test.git

RUN chmod -R 755 /bin
