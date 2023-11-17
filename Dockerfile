FROM ubuntu:jammy

RUN apt update \
   && apt install curl -y \
   && curl -s https://install.zerotier.com | bash

COPY startup.sh /startup.sh

EXPOSE 9993/udp

ENTRYPOINT ["/startup.sh"]
