FROM ruby:2.7

WORKDIR /app

COPY ex3.rb /app/
COPY test_ex3.rb /app/

RUN gem install test-unit

CMD ["ruby", "test_ex3.rb"]
