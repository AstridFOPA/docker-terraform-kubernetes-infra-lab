#!/usr/bin/env bash

# 1) setting up the environment 
echo 'starting deployment process...'
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 864899864155.dkr.ecr.us-east-1.amazonaws.com
TAG=$(date +%Y%m%d-%H%M%S)
# 2) Creating and uploading the image 
docker build -t 864899864155.dkr.ecr.us-east-1.amazonaws.com/my-node-app:$TAG .
docker push 864899864155.dkr.ecr.us-east-1.amazonaws.com/my-node-app:$TAG
# 3) cleanup 
docker image rm 864899864155.dkr.ecr.us-east-1.amazonaws.com/my-node-app:$TAG