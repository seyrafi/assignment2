FROM alpine:latest

COPY ./run_client.sh /home
RUN apk add openrc 
RUN apk add openssh
RUN apk add sshpass
RUN rc-status
RUN touch /run/openrc/softlevel
ENTRYPOINT ["/bin/sh","/home/run_client.sh"]
WORKDIR /clientdata
