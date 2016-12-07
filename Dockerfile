FROM ruby:alpine

ADD https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.xz /opt/

RUN ln -s /opt/node-v6.9.2-linux-x64/bin/* /usr/bin/

RUN apk add --no-cache --virtual .build-dependencies make g++
RUN apk del .build-dependencies

RUN gem install middleman

RUN mkdir /opt/apps
