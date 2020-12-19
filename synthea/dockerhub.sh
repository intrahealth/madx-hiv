#!/usr/bin/env bash
set -ex

# automate tagging with the short commit hash
docker build --no-cache -t intrahealth/synthea-hiv:$(git rev-parse --short HEAD) .
docker tag intrahealth/synthea-hiv:$(git rev-parse --short HEAD) intrahealth/synthea-hiv
docker push intrahealth/synthea-hiv:$(git rev-parse --short HEAD)
docker push intrahealth/synthea-hiv:latest