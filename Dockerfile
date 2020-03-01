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
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle update --bundler
RUN bundle install
RUN  bundle install --jobs 4 --retry 3
COPY . /myapp
