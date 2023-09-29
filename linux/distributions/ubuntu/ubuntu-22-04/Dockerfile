FROM ubuntu:23.04

WORKDIR /home/root/

RUN apt-get update && apt-get -y install sudo
COPY ./setup.sh ./
ENTRYPOINT [ "tail", "-f", "/dev/null" ]