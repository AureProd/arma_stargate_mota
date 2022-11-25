FROM ubuntu:20.04

RUN dpkg --add-architecture i386

RUN apt update \
    && apt upgrade -y \
    && apt-get install libtbb2:i386 libtbb2 -y

CMD sleep infinity