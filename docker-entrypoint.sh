#!/bin/sh

set -e

rm -f tmp/pids/server.pid

exec bundle exec rails server -b 0.0.0.0 -p $PORT
