#!/bin/sh -e

docker compose --profile gitlab stop gitlab-runner
docker compose --profile gitlab rm -f gitlab-runner
docker compose --profile gitlab up -d gitlab-runner
docker compose exec -it gitlab-runner gitlab-runner register \
  --url http://gitlab.aplaline.com:8929/ \
  --executor docker \
  --docker-image ubuntu \
  --description shared \
  --request-concurrency 16
