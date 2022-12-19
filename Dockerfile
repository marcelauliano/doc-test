# Base Image
FROM ubuntu:18.04

# Metadata
LABEL version="1"
LABEL software="fastaLength_1.py"

# Maintainer
MAINTAINER  Marcela mu2@sanger.ac.uk

ENV DEBIAN_FRONTEND=noninteractive

RUN cd  /bin/ \
  && git clone https://github.com/marcelauliano/doc-test.git

RUN chmod -R 755 /bin
