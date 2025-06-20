FROM ruby:3.2.5-bullseye
RUN apt-get update -qq
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
RUN npm install -g yarn

WORKDIR /sapomie-api
COPY . /sapomie-api
RUN bundle config set path 'vendor/bundle'
RUN bundle install
CMD bash -c "rm -rf /sapomie-api/tmp/pids/server.pid && bundle exec rails server -b '0.0.0.0' -p 3001"