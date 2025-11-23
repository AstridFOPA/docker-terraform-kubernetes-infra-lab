provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "docker_Instance" {
  ami                     = "ami-0ecb62995f68bb549" #ubuntu ami 
  instance_type           = "t2.micro"
  key_name                = "mykeypair"
  vpc_security_group_ids  = ["sg-0350201116c1b3f74"]
  user_data = <<-EOF
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
  EOF
  
  tags = {
    Name = "docker_Instance"
    Env = "dev"
  }
}

