#!/bin/sh
set -eu

sh docker/bin/rm.sh

docker volume create mtqlog

set +e
docker network create traefik
set -e
