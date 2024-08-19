#!/bin/sh -e

docker compose --profile gitlab stop gitlab
docker compose --profile gitlab rm -f gitlab
docker compose --profile gitlab up -d gitlab
