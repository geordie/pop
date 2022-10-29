FROM ruby:3.1.1-alpine

RUN apk update && apk upgrade && \
  apk add build-base mariadb-client mariadb-dev nodejs git bash tzdata imagemagick && \
  rm -rf /var/cache/apk/* && \
  mkdir /pop

WORKDIR /pop

ADD . /pop
RUN bundle install
