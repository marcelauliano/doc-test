# Base Image
FROM ubuntu:18.04

# Metadata
LABEL version="1"
LABEL software="fastaLength_1.py"

# Maintainer
MAINTAINER  Marcela mu2@sanger.ac.uk

ENV DEBIAN_FRONTEND=noninteractive
COPY --chmod=0755 ./fastaLength_1.py /usr/local/bin/

ENV PYTHONPATH=/usr/lib/python3.9/site-packages
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install biopython

RUN cd  /bin/ \
  && git clone https://github.com/marcelauliano/doc-test.git
