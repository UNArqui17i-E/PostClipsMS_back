FROM ruby:2.3

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client \
    && rm -rf /var/lib/apt/lists


RUN mkdir /PostClips
WORKDIR /PostClips

ADD Gemfile /PostClips/Gemfile
ADD Gemfile.lock /PostClips/Gemfile.lock

RUN bundle install

ADD . /PostClips

EXPOSE 3000
CMD rails server -b 0.0.0.0 -P /tmp/server.pid
