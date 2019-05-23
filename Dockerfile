FROM ruby:2.6.2
RUN apt-get update -qq

ENV LANG C.UTF-8
ENV APP_ROOT /src

WORKDIR $APP_ROOT
COPY Gemfile Gemfile.lock $APP_ROOT/
RUN bundle install
