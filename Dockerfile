FROM ruby:2.7.2
MAINTAINER Marcelo P. Veloso <marcelo.perini.veloso@gmail.com

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y libpq-dev nodejs yarn
RUN gem install bundler:2.2.5

WORKDIR /app
COPY . ./
RUN cp config/database.yml.sample ./config/database.yml
RUN bundle check || bundle install
RUN yarn install --check-files
