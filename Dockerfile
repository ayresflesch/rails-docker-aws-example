FROM ruby:2.7.0-alpine

WORKDIR /app
COPY . /app/

RUN apk add --update --no-cache \
  build-base \
  tzdata \
  nodejs \
  yarn \
  postgresql-dev

RUN bundle install --jobs 3
RUN yarn install --check-files

CMD [ "rails", "server", "-b", "0.0.0.0"]


