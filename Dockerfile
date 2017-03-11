 FROM ruby:2.3

 RUN apt-get update -yqq\
  && apt-get install -yqq --no-install-recommends\
    postgresql-client\
    && rm -rf /va/lib/apt/lists

WORKDIR /usr/scr/app
COPY Gemfile* .
RUN bundle install
COPY . .

EXPOSE 3000
CMD rails server -b 0.0.0.0
