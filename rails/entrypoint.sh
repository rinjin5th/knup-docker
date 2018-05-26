#!/bin/sh

cd $1

bundle install
rails server -b 0.0.0.0