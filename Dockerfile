FROM node:8.0.0

ENV NPM_CONFIG_LOGLEVEL warn

LABEL "MAINTAINER"="https://github.com/austin0925"

EXPOSE 9000

RUN mkdir /usr/src/myvol
COPY entrypoint.sh /usr/src/myvol/entrypoint.sh
RUN chmod 755 /usr/src/myvol/entrypoint.sh

RUN mkdir /usr/src/chatapp
COPY chatapp /usr/src/chatapp

ENTRYPOINT ["/usr/src/myvol/entrypoint.sh"]
