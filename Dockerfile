FROM node:8.0.0

ENV NPM_CONFIG_LOGLEVEL warn

LABEL "MAINTAINER"="https://github.com/austin0925"

EXPOSE 9000

RUN mkdir /usr/src/myvol
RUN echo "hello world" > /usr/src/myvol/greeting

COPY test.js /usr/src/myvol/test.js

COPY entrypoint.sh /usr/src/myvol/entrypoint.sh
RUN chmod 755 /usr/src/myvol/entrypoint.sh

ENTRYPOINT ["/usr/src/myvol/entrypoint.sh"]
