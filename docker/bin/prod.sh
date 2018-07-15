#!/bin/sh
set -eu
sh docker/bin/rm.sh
sh docker/bin/init.sh
docker-compose build web
docker-compose -f docker-compose.yml up -d web

