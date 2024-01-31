FROM ruby:2.7.6

RUN gem install bundle

RUN mkdir /app
WORKDIR /app
COPY . .
ENTRYPOINT ["ruby", "/app/entrypoint.rb"]