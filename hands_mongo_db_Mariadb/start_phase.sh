#!/usr/bin/env bash
docker network create m-network 2>/dev/null

docker container run -d --name mongo-db --network m-network \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=secret \
  mongo

docker container run -d --name mongo-express --network m-network \
  -e ME_CONFIG_MONGODB_SERVER=mongo-db \
  -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
  -e ME_CONFIG_MONGODB_ADMINPASSWORD=secret \
  -p 8081:8081 mongo-express