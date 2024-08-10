FROM ruby:2.7.7
RUN apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn

RUN gem install bundler:2.2.33

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/ 
RUN bundle install