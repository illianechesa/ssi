FROM python

RUN apt install libcurl4-openssl-dev

RUN pip3-install --upgrade wfuzz