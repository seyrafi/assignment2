
FROM alpine:latest
WORKDIR /serverdata

COPY ./1.txt /serverdata
COPY ./run_server.sh /home
RUN md5sum 1.txt > checksum.md5
RUN apk add openrc 
RUN apk add openssh
RUN apk add sshpass
RUN rc-status
RUN touch /run/openrc/softlevel

ENTRYPOINT ["/bin/sh","/home/run_server.sh"]

RUN adduser --disabled-password --gecos "" alpineserver
RUN echo alpineserver:mehdi | chpasswd

