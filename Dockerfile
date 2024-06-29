FROM ruby:2.7.6

RUN gem install bundler -v 2.4.22

RUN mkdir /app
WORKDIR /app
COPY . .
ENTRYPOINT ["ruby", "/app/entrypoint.rb"]