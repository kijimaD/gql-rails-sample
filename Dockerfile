FROM phusion/passenger-ruby27:latest

WORKDIR /tmp

ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN gem update --system
RUN bundle install

COPY . /home/app/webapp
RUN usermod -u 1000 app
RUN chown -R app:app /home/app/webapp
WORKDIR /home/app/webapp

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
