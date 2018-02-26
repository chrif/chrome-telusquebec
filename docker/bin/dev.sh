#!/bin/sh
set -eu
sh docker/bin/init.sh
eval $(cat .env .env-override) docker-compose up -d --build web
