FROM ruby:latest

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler
RUN bundle install

COPY . .

CMD ["ruby", "ex3_test.rb"]
