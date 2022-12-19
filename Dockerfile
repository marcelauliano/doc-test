# Base Image
FROM ubuntu:18.04

# Metadata
LABEL version="1"
LABEL software="fastaLength_1.py"

# Maintainer
MAINTAINER  Marcela mu2@sanger.ac.uk

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update -y
RUN apt-get install -y python3
RUN ln -s /usr/bin/python3 python
RUN python -m pip install --upgrade pip
RUN pip install biopython

COPY --chmod=0755 ./fastaLength_1.py /usr/local/bin/
