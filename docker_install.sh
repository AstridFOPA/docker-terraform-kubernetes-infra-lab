#!/bin/bash
  set -ex

  # Update OS
  apt update -y

  # Install Docker
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh

  # Add ubuntu user to docker group
  usermod -aG docker ubuntu

  # Enable Docker
  systemctl enable docker
  systemctl start docker