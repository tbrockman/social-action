FROM ruby

RUN gem install bundle

RUN mkdir /app
WORKDIR /app
COPY . .
ENTRYPOINT ["ruby", "/app/entrypoint.rb"]