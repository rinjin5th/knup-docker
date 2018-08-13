#!/bin/sh

cd $1

PID_FILE="${1}/tmp/pids/server.pid"
if [ -e $PID_FILE ]; then
  rm $PID_FILE
fi

bundle install
rails server -b 0.0.0.0