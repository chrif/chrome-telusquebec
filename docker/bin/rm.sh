#!/bin/sh

set -eu
docker-compose down -v --rmi=all
