#!/usr/bin/env bash
docker container stop blog-wordpress
docker container stop blog-phpmyadmin
docker container stop db
docker network rm blog
