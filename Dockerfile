FROM python

RUN apt-get update
RUN apt install libcurl4-openssl-dev
RUN apt install crunch
# RUN apt-get install crunch

RUN pip3 install --upgrade wfuzz


COPY pfinal pfinal