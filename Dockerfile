FROM node:8.0.0

ENV NPM_CONFIG_LOGLEVEL warn

LABEL "MAINTAINER"="https://github.com/austin0925"

EXPOSE 3000


RUN mkdir /usr/src/chatapp

COPY chatapp /usr/src/chatapp
RUN chmod 755 /usr/src/chatapp

COPY entrypoint.sh /usr/src/chatapp/entrypoint.sh
RUN chmod 755 /usr/src/chatapp/entrypoint.sh
ENTRYPOINT ["/usr/src/chatapp/entrypoint.sh"]
