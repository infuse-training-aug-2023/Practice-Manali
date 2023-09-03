FROM ruby:2.7

WORKDIR /app

RUN gem install json faker

ENV ENV_VAR="ENV_VAR"

COPY ex2.rb /app/

CMD ["ruby", "ex2.rb" , "1","2"]

