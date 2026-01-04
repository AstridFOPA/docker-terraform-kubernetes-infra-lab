#!/usr/bin/env bash
docker network rm blog
docker container stop blog-wordpress
docker container stop blog-phpmyadmin
docker container stop db

