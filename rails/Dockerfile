FROM ruby:2.4.1

ENV APP_DIR /usr/src/app
ENV APP_ROOT /usr/src/app/rails-google-login

WORKDIR $APP_DIR

RUN apt-get update && \
    apt-get install -y git \
                       nodejs \
                       openssl \
                       mysql-client

RUN git clone https://github.com/rinjin5th/rails-google-login.git

WORKDIR $APP_ROOT

RUN bundle install

EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]