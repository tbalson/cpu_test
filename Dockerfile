FROM ubuntu:latest
MAINTAINER Tyler Balson <tbalson@iu.edu>

RUN apt-get update -q && apt-get install -qy \
    build-essential \
    python3-pip \
    python3-dev \
    zlib1g-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    git-core \
    default-jre \
    software-properties-common -y

RUN git clone https://github.com/tbalson/cpu_test.git

WORKDIR cpu_test/

EXPOSE 8080


RUN make start

CMD ["make", "start", "python", "pip3"]
