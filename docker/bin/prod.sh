#!/bin/sh
set -eu
sh docker/bin/init.sh
docker-compose -f docker-compose.yml up -d --build web
