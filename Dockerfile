FROM ruby:2.6.3-alpine
RUN apk add --no-cache nodejs build-base libxml2-dev libxslt-dev
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
