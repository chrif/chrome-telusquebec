#!/bin/sh
set -eu
docker volume create mtqlog

set +e
docker network create traefik
set -e
