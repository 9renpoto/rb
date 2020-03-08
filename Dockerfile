FROM ruby:2.6-alpine
RUN apk add -U --no-cache \
  postgresql-client postgresql-dev \
  nodejs \
  build-base \
  libxml2-dev \
  libxslt-dev \
  tzdata

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install
RUN bundle update --bundler
COPY . /myapp
