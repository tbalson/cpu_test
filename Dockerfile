FROM ubuntu:18.10
MAINTAINER Tyler Balson <tbalson@iu.edu>

RUN apt-get update -q && apt-get install -qy \
    build-essential \
    python-dev \
    python-pip \
    zlib1g-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    git-core \
    default-jre \
    software-properties-common -y

RUN git clone #our repo 

WORKDIR #working dir within the repo 

EXPOSE 8080

RUN make service

CMD ["make", "start"]