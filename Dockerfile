FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install make build-essential zlib1g-dev ncurses-dev libbz2-dev liblzma-dev

RUN mkdir -p /soft /input /output /run
COPY ./samtools-1.9/ /soft/samtools-1.9
WORKDIR /soft/samtools-1.9
RUN make -j 4
RUN make install
#WORKDIR /run
#ENTRYPOINT ["samtools"]
