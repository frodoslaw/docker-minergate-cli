FROM ubuntu:16.04
MAINTAINER Radoslaw Frackiewicz <frodoslaw@gmail.com>

RUN apt-get update && \
    apt-get -qqy --no-install-recommends  install \
    ca-certificates \
    wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q --content-disposition https://minergate.com/download/deb-cli && \
    dpkg -i *.deb && \
    rm *.deb

ENTRYPOINT ["minergate-cli"]
CMD ["-user", "frodoslaw@o2.pl", "-bcn"]
