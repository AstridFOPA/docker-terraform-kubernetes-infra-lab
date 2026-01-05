#!/usr/bin/env bash

docker container stop mongo-db
docker container stop mongo-express
docker network rm m-network