FROM ruby:2.4.1

RUN apt-get update && \
    apt-get install -y git \
                       nodejs \
                       openssl \
                       mysql-client

COPY ./entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

ARG PROJECT_NAME="rails-google-login"
ENV APP_ROOT /usr/src/app/$PROJECT_NAME

EXPOSE  3000
ENTRYPOINT ["sh", "-c", "/usr/local/bin/entrypoint.sh $APP_ROOT"]