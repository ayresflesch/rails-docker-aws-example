FROM ruby:2.7.4-alpine

WORKDIR /app
COPY . /app/

RUN apk add --update --no-cache \
  build-base \
  tzdata \
  nodejs \
  yarn \
  mariadb-dev

RUN bundle install --jobs 3
RUN yarn install

CMD [ "rails", "server", "-b", "0.0.0.0"]
