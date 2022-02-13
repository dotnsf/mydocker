FROM node:14
#USER root

WORKDIR /usr/src/app

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja_JP
#ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN apt-get update
RUN apt-get -y install -y vim less
RUN npm install --upgrade npm

