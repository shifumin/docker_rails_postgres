# syntax=docker/dockerfile:1

ARG RUBY_VERSION=3.3.5
FROM ruby:${RUBY_VERSION}

WORKDIR /app

ENV BUNDLE_PATH="/usr/local/bundle"

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]

