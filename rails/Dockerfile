FROM ruby:2.5.1

RUN apt-get update && \
    apt-get install -y git \
                       openssl \
                       mysql-client

# https://github.com/nodesource/distributions#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
       && apt-get install -y nodejs

COPY ./entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

ARG PROJECT_NAME="gourmemo"
ENV APP_ROOT /usr/src/app/$PROJECT_NAME

EXPOSE  3000
ENTRYPOINT ["sh", "-c", "/usr/local/bin/entrypoint.sh $APP_ROOT"]