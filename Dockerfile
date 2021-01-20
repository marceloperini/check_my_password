FROM ruby:2.7.2
MAINTAINER Marcelo P. Veloso <marcelo.perini.veloso@gmail.com

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y libpq-dev nodejs yarn
RUN gem install bundler:2.2.5

RUN mkdir /check_my_password
WORKDIR /check_my_password
COPY . /check_my_password
RUN cp /check_my_password/config/database.yml.sample /check_my_password/config/database.yml
RUN bundle install
RUN yarn install
